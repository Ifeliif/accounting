json.array!(@custumer_prices) do |custumer_price|
  json.extract! custumer_price, :id, :product_code, :custumer_code, :price
  json.url custumer_price_url(custumer_price, format: :json)
end
