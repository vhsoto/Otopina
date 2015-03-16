json.array!(@events) do |event|
  json.extract! event, :id, :Detail, :event_category_id
  json.url event_category_event_url(event.event_category, event ,format: :json)
end
