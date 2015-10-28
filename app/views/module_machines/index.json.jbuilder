json.array!(@module_machines) do |module_machine|
  json.extract! module_machine, :id, :modulo_id, :machine_id
  json.url module_machine_url(module_machine, format: :json)
end
