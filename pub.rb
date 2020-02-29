class Pub

attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def number_of_drinks
    return @drinks.length
  end

  def increase_till(drink)
    return @till += drink.price
  end

  def can_serve(drink, customer)
    return increase_till(drink) if customer.age > 21 && customer.drunk_level < 6
  end

  def calculate_stock(drink)
    stock = 0
    for drink in drinks
    stock += drink.quantity
    end
    return stock
  end

  def calculate_stock_value(drink)
    stock = 0
    for drink in drinks
    stock += drink.quantity * drink.price
    end
    return stock
  end

  def stock_value_per_drink(drink)
    return drink.quantity * drink.price
  end

end
