json.array!(@module_works) do |module_work|
  json.extract! module_work, :id, :minutos_reales, :costo_minuto, :otros_costos, :costo_mano_obra
  json.url module_work_url(module_work, format: :json)
end
