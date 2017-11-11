require_relative 'product'

##class is shopping cart
class ShoppingCart

  #instance variables
  def initialize
    @shopping_cart = []
  end

  def add_to_cart
    new_item = Product.new(name, price)
    cart_array << new_item
  end

  def cart_array
    @shopping_cart
  end

  def delete_item(argument)

    cart_array.delete_if do |item|
    argument == item.name #how would I do name and price?
    end
  end

  def before_tax_total
    sum = 0
    shopping_cart.each do |item|
      sum += item.price
    end
    puts "Your pre-tax total is #{item}"
  end

  def after_tax_total
    sum = 0
    shopping_cart.each do |item|
      sum += item.post_tax
    end
    puts "Your total is #{sum}"
  end

end
ShoppingCart.remove_product

my_cart = Shopping_Cart.new

my_cart.add_product("banana", 2.94)
my_cart.add_product("doritos", 4.22)
my_cart.add_product("green onions", 2.14)
my_cart.add_product("oranges", 3.54)

puts my_cart.cart_array.inspect
