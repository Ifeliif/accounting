json.array!(@staffs) do |staff|
  json.extract! staff, :id, :code, :name, :department_id, :start_date
  json.url staff_url(staff, format: :json)
end
