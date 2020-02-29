class Drink

  attr_reader :name, :price

  attr_accessor :alcohol_level, :quantity

  def initialize(name, price, alcohol_level, quantity)
    @name = name
    @price = price
    @alcohol_level = alcohol_level
    @quantity = quantity
  end

end
