json.array!(@datasheets) do |datasheet|
  json.extract! datasheet, :id, :nombre, :referencia, :supply_id
  json.url datasheet_url(datasheet, format: :json)
end
