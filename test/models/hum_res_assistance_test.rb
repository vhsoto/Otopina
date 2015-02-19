# == Schema Information
#
# Table name: hum_res_assistances
#
#  id               :integer          not null, primary key
#  name             :string
#  qty              :integer
#  price            :float
#  time             :datetime
#  subtotal         :float
#  adverse_event_id :integer
#  service_id       :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class HumResAssistanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
