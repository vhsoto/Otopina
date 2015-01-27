json.array!(@branch_offices) do |branch_office|
  json.extract! branch_office, :id, :name, :city
  json.url branch_office_url(branch_office, format: :json)
end
