class Drug < ActiveRecord::Base
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
end
