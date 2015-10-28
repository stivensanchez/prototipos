json.array!(@machine_modules) do |machine_module|
  json.extract! machine_module, :id, :machine_id, :cantidad, :fecha_compra, :precio, :total_maquina, :valor_total_maquina, :valor_depreciacion
  json.url machine_module_url(machine_module, format: :json)
end
