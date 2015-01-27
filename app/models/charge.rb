class Charge < ActiveRecord::Base
	has_many :ae_procedures, dependent: :destroy
	has_many :ae_drugs, dependent: :destroy
end
