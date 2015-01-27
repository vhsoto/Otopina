class HospitalizationDay < ActiveRecord::Base
  belongs_to :adverse_event
  belongs_to :service
  before_save :calcular_subtotal

  def calcular_subtotal
  	self.subtotal = self.qty * self.price
  end
end
