# == Schema Information
#
# Table name: ae_drugs
#
#  id               :integer          not null, primary key
#  drug_price       :float
#  drug_subtotal    :float
#  drug_time        :datetime
#  qty              :integer
#  adverse_event_id :integer
#  drug_id          :integer
#  service_id       :integer
#  charge_id        :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class AeDrug < ActiveRecord::Base
  belongs_to :adverse_event
  belongs_to :drug
  belongs_to :service
  belongs_to :charge
  before_save :calcular_subtotal

  def calcular_subtotal
  	self.drug_subtotal = self.drug_price * self.qty    
  end  

  validates_presence_of :drug_price
  validates_presence_of :qty
  validates_presence_of :service_id
  validates_presence_of :charge_id
end
