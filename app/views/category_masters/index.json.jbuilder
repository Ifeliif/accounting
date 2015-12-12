json.array!(@category_masters) do |category_master|
  json.extract! category_master, :id, :code, :name, :level, :upper_code
  json.url category_master_url(category_master, format: :json)
end
