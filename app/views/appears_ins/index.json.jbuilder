json.array!(@appears_ins) do |appears_in|
  json.extract! appears_in, :id, :cart_id, :product_id, :quantity, :pricesold
  json.url appears_in_url(appears_in, format: :json)
end
