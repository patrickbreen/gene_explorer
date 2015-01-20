json.array!(@orders) do |order|
  json.extract! order, :id, :description, :price, :quantity, :user_id
  json.url order_url(order, format: :json)
end
