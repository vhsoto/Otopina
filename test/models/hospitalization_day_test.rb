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

require 'test_helper'

class HospitalizationDayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
