json.array!(@jodas) do |joda|
  json.extract! joda, :id, :nombre, :apellido, :telefono
  json.url joda_url(joda, format: :json)
end
