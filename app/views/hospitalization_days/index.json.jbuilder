json.array!(@hospitalization_days) do |hospitalization_day|
  json.extract! hospitalization_day, :id, :qty, :price, :subtotal, :date, :adverse_event_id, :service_id
  json.url hospitalization_day_url(hospitalization_day, format: :json)
end
