json.array!(@variables) do |variable|
  json.extract! variable, :id, :numero, :ficha, :cantidad, :nombre, :medida, :valor_unidad, :valor_total, :total
  json.url variable_url(variable, format: :json)
end
