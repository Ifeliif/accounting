json.array!(@departments) do |department|
  json.extract! department, :id, :code, :start_date, :end_date, :level, :upper_code
  json.url department_url(department, format: :json)
end
