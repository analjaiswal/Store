json.array!(@silver_and_aboves) do |silver_and_abofe|
  json.extract! silver_and_abofe, :id, :customer_id, :creditline
  json.url silver_and_abofe_url(silver_and_abofe, format: :json)
end
