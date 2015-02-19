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

require 'test_helper'

class AeDrugTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
