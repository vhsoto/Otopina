# == Schema Information
#
# Table name: drugs
#
#  id         :integer          not null, primary key
#  code       :string
#  name       :string
#  price      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Drug < ActiveRecord::Base
	after_save :load_into_soulmate
	before_destroy :remove_from_soulmate

	require 'csv'
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			drug_hash = row.to_hash # exclude the price field
	      	drug = Drug.where(id: drug_hash["id"])

	      	if drug.count == 1
	        	drug.first.update_attributes(drug_hash)
	      	else
	        	Drug.create!(drug_hash)
	     	end
		end
	end

	has_many :ae_drugs, dependent: :destroy	

	validates_presence_of :code
	validates_presence_of :name
	validates_presence_of :price

	private 
 
	def load_into_soulmate
		loader = Soulmate::Loader.new("drugs")
		loader.add("term" => name, "id" => self.id, "data" => {
			"link" => Rails.application.routes.url_helpers.drug_path(self)
	   	})
	end
 
	def remove_from_soulmate
		loader = Soulmate::Loader.new("drugs")
	    loader.remove("id" => self.id)
	end
end
