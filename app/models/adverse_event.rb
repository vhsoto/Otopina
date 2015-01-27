class AdverseEvent < ActiveRecord::Base
  belongs_to :event
  belongs_to :patient
  belongs_to :branch_office
  has_many :ae_drugs, dependent: :destroy
  has_many :ae_procedures, dependent: :destroy
  has_many :hospitalization_days, dependent: :destroy
  has_many :hum_res_assistances, dependent: :destroy
end
