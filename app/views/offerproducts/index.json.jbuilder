json.array!(@offerproducts) do |offerproduct|
  json.extract! offerproduct, :id, :product_id, :offerprice
  json.url offerproduct_url(offerproduct, format: :json)
end
