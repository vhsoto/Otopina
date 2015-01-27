json.array!(@patients) do |patient|
  json.extract! patient, :id, :document_type, :document_number, :name, :lastname, :age, :gender
  json.url patient_url(patient, format: :json)
end
