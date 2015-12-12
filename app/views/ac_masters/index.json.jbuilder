json.array!(@ac_masters) do |ac_master|
  json.extract! ac_master, :id, :code, :name, :cd_division, :level, :upper_code, :detail
  json.url ac_master_url(ac_master, format: :json)
end
