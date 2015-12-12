json.array!(@products) do |product|
  json.extract! product, :id, :name, :selling_price, :buying_price, :selling_cost, :tax_category, :category
  json.url product_url(product, format: :json)
end
