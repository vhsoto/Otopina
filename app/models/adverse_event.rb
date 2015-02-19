# == Schema Information
#
# Table name: adverse_events
#
#  id               :integer          not null, primary key
#  time             :datetime
#  reason_admission :string
#  description      :string
#  pregnant         :boolean
#  event_id         :integer
#  patient_id       :integer
#  branch_office_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class AdverseEvent < ActiveRecord::Base
  belongs_to :event
  belongs_to :patient
  belongs_to :branch_office
  has_many :ae_drugs, dependent: :destroy
  has_many :ae_procedures, dependent: :destroy
  has_many :hospitalization_days, dependent: :destroy
  has_many :hum_res_assistances, dependent: :destroy

  validates_presence_of :patient_id
  validates_presence_of :reason_admission
  validates_presence_of :description
  validates_presence_of :event_id
  validates_presence_of :branch_office_id
end
