json.array!(@stored_cards) do |stored_card|
  json.extract! stored_card, :id, :creditcard_id, :customer_id
  json.url stored_card_url(stored_card, format: :json)
end
