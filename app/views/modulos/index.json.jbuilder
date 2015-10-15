json.array!(@modulos) do |modulo|
  json.extract! modulo, :id, :nombre
  json.url modulo_url(modulo, format: :json)
end
