class Patient < ActiveRecord::Base
	has_many :adverse_events, dependent: :destroy
end
