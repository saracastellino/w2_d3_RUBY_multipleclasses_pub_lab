class Customer

  attr_reader :name, :wallet, :age

  attr_accessor :drunk_level

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunk_level = 0
  end

  def decrease_wallet(drinks)
    @wallet -= drinks.price
  end

  def increase_drunk_level(drinks)
    @drunk_level += drinks.alcohol_level
  end

  def decrease_drunk_level(food)
    @drunk_level -= food.rejuvenation_level
  end
end
