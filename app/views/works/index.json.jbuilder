json.array!(@works) do |work|
  json.extract! work, :id, :totalPlaneada, :operarios, :modulo_id
  json.url work_url(work, format: :json)
end
