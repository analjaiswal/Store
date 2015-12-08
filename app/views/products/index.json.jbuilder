json.array!(@products) do |product|
  json.extract! product, :id, :ptype, :pname, :pprice, :description, :pquantity
  json.url product_url(product, format: :json)
end
