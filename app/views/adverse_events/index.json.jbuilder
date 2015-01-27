json.array!(@adverse_events) do |adverse_event|
  json.extract! adverse_event, :id, :time, :reason_admission, :description, :pregnant, :event_id, :patient_id, :branch_office_id
  json.url adverse_event_url(adverse_event, format: :json)
end
