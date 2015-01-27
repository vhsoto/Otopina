class Procedure < ActiveRecord::Base
	has_many :ae_procedures, dependent: :destroy
end
