# == Schema Information
#
# Table name: events
#
#  id                :integer          not null, primary key
#  Detail            :string
#  event_category_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Event < ActiveRecord::Base
  belongs_to :event_category

  validates_presence_of :Detail
  validates_presence_of :event_category_id
end
