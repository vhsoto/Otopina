# == Schema Information
#
# Table name: event_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EventCategory < ActiveRecord::Base
	has_many :events, dependent: :destroy

	validates_presence_of :name
end
