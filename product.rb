class Product
#class variable
  @@tax = 1.14
#instance variables
  def initialize(name, price)
    @name = name
    @price = price
  end

  def tax_rate
    @tax
  end

  def name
    @name
  end

  def price
    @price
  end

  def post_tax
    @price * Product.tax_rate
  end

#class methods
  def self.tax_rate
    @@tax
  end

  def self.new_product
    new_item = Product.new(name, price)
    return new_item
  end
end
