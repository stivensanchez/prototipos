json.array!(@opers) do |oper|
  json.extract! oper, :id, :nombre, :apellido, :telefono, :group_id
  json.url oper_url(oper, format: :json)
end
