# == Schema Information
#
# Table name: procedures
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Procedure < ActiveRecord::Base
	require 'csv'
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			procedure_hash = row.to_hash # exclude the price field
	      	procedure = Procedure.where(id: procedure_hash["id"])

	      	if procedure.count == 1
	        	procedure.first.update_attributes(procedure_hash)
	      	else
	        	Procedure.create!(procedure_hash)
	     	end
		end
	end
	has_many :ae_procedures, dependent: :destroy

	validates_presence_of :name
	validates_presence_of :code
end
