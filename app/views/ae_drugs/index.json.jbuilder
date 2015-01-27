json.array!(@ae_drugs) do |ae_drug|
  json.extract! ae_drug, :id, :drug_price, :drug_subtotal, :drug_time, :qty, :adverse_event_id, :drug_id, :service_id, :charge_id
  json.url ae_drug_url(ae_drug, format: :json)
end
