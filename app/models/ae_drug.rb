class AeDrug < ActiveRecord::Base
  belongs_to :adverse_event
  belongs_to :drug
  belongs_to :service
  belongs_to :charge
  before_save :calcular_subtotal

  def calcular_subtotal
  	self.drug_subtotal = self.drug_price * self.qty
  end
end
