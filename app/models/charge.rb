# == Schema Information
#
# Table name: charges
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Charge < ActiveRecord::Base
	has_many :ae_procedures, dependent: :destroy
	has_many :ae_drugs, dependent: :destroy

	validates_presence_of :name
end
