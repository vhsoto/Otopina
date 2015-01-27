class AeProcedure < ActiveRecord::Base
  belongs_to :procedure
  belongs_to :service
  belongs_to :adverse_event
  belongs_to :charge
  
end
