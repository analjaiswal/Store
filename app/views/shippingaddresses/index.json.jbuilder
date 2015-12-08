json.array!(@shippingaddresses) do |shippingaddress|
  json.extract! shippingaddress, :id, :customer_id, :saname, :recepientname, :street, :snumber, :city, :zip, :state, :country
  json.url shippingaddress_url(shippingaddress, format: :json)
end
