json.array!(@groups) do |group|
  json.extract! group, :id, :ficha, :nombre, :modulo_id
  json.url group_url(group, format: :json)
end
