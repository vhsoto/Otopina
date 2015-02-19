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

require 'test_helper'

class AeProcedureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
