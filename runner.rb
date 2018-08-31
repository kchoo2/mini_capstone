require 'http'



print "Input name of product = "
@input_name = gets.chomp

print "Input price of product = "
@input_price = gets.chomp

print "Input image URL of product = "
@input_image_url = gets.chomp

print "Input description of product = "
@input_description = gets.chomp

def create

@product = Product.new(
                      name: "#{@input_name}",
                      price: "#{@input_price}",
                      image_url: "#{@input_image_url}",
                      description: "#{@input_description}"
                      )
@product.save


end