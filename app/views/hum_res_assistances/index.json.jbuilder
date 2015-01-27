json.array!(@hum_res_assistances) do |hum_res_assistance|
  json.extract! hum_res_assistance, :id, :name, :qty, :price, :time, :subtotal, :adverse_event_id, :service_id
  json.url hum_res_assistance_url(hum_res_assistance, format: :json)
end
