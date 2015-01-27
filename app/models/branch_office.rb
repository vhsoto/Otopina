class BranchOffice < ActiveRecord::Base
	has_many :branch_offices, dependent: :destroy
end
