# == Schema Information
#
# Table name: patients
#
#  id              :integer          not null, primary key
#  document_type   :string
#  document_number :string
#  name            :string
#  lastname        :string
#  age             :integer
#  gender          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Patient < ActiveRecord::Base
	has_many :adverse_events, dependent: :destroy

	validates_presence_of :document_number
	validates_presence_of :document_type
	validates_presence_of :name
	validates_presence_of :lastname
	validates_presence_of :age
	validates_presence_of :gender
end
