json.array!(@printers) do |printer|
  json.extract! printer, :id, :product_id, :printertype, :resolution
  json.url printer_url(printer, format: :json)
end
