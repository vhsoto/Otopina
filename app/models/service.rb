# == Schema Information
#
# Table name: services
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Service < ActiveRecord::Base
	has_many :ae_procedures, dependent: :destroy
	has_many :ae_drugs, dependent: :destroy
	has_many :hospitalization_days, dependent: :destroy
	has_many :hum_res_assistances, dependent: :destroy

	validates_presence_of :name
end
