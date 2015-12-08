json.array!(@computers) do |computer|
  json.extract! computer, :id, :product_id, :cputype
  json.url computer_url(computer, format: :json)
end
