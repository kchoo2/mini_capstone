json.id carted_product.id
json.user_email carted_product.user.email
json.quantity carted_product.quantity
json.price carted_product.product.price
json.subtotal carted_product.subtotal
json.tax carted_product.tax
json.total carted_product.total

json.formatted do
  json.price number_to_currency(order.product.price)
  json.subtotal number_to_currency(order.subtotal)
  json.tax number_to_currency(order.tax)
  json.total number_to_currency(order.total)
end

json.product do
  json.partial! carted_product.product, partial: 'api/products/product', as: :product
end