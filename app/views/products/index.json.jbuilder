json.array!(@products) do |product|
  json.extract! product, :id, :description, :number_available
  json.url product_url(product, format: :json)
end
