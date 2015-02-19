# == Schema Information
#
# Table name: branch_offices
#
#  id         :integer          not null, primary key
#  name       :string
#  city       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BranchOffice < ActiveRecord::Base
	has_many :branch_offices, dependent: :destroy

	validates_presence_of :name
	validates_presence_of :city
end
