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

require 'test_helper'

class AdverseEventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
