json.array!(@events) do |event|
  json.extract! event, :id, :Detail, :event_category_id
  json.url event_url(event, format: :json)
end
