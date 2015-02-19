# == Schema Information
#
# Table name: hospitalization_days
#
#  id               :integer          not null, primary key
#  qty              :integer
#  price            :float
#  subtotal         :float
#  date             :date
#  adverse_event_id :integer
#  service_id       :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class HospitalizationDay < ActiveRecord::Base
  belongs_to :adverse_event
  belongs_to :service
  before_save :calcular_subtotal

  def calcular_subtotal
  	self.subtotal = self.qty * self.price
  end

  validates_presence_of :qty
  validates_presence_of :price	
  validates_presence_of :service_id
end
