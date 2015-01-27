class Drug < ActiveRecord::Base
	has_many :ae_drugs, dependent: :destroy
end
