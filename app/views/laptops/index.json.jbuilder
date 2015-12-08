json.array!(@laptops) do |laptop|
  json.extract! laptop, :id, :product_id, :btype, :weight
  json.url laptop_url(laptop, format: :json)
end
