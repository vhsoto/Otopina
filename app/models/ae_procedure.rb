# == Schema Information
#
# Table name: ae_procedures
#
#  id                 :integer          not null, primary key
#  procedure_price    :float
#  procedure_subtotal :float
#  procedure_time     :datetime
#  procedure_id       :integer
#  service_id         :integer
#  adverse_event_id   :integer
#  charge_id          :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class AeProcedure < ActiveRecord::Base
  belongs_to :procedure
  belongs_to :service
  belongs_to :adverse_event
  belongs_to :charge

  def calcular_subtotal
    self.procedure_subtotal = self.procedure_price   
  end
  
  validates_presence_of :procedure_price
  validates_presence_of :service_id
  validates_presence_of :charge_id	 
  
end
