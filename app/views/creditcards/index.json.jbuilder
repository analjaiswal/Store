json.array!(@creditcards) do |creditcard|
  json.extract! creditcard, :id, :secnumber, :ownername, :cctype, :ccaddress, :expdate
  json.url creditcard_url(creditcard, format: :json)
end
