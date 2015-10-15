json.array!(@supplies) do |supply|
  json.extract! supply, :id, :nombre, :medida, :cantidad
  json.url supply_url(supply, format: :json)
end
