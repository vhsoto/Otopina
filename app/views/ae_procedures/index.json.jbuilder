json.array!(@ae_procedures) do |ae_procedure|
  json.extract! ae_procedure, :id, :procedure_price, :procedure_subtotal, :procedure_time, :procedure_id, :service_id, :adverse_event_id, :charge_id
  json.url ae_procedure_url(ae_procedure, format: :json)
end
