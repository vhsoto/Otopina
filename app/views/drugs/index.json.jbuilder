json.array!(@drugs) do |drug|
  json.extract! drug, :id, :code, :name, :price
  json.url drug_url(drug, format: :json)
end
