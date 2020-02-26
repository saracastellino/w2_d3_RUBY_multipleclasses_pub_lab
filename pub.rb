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

  def increase_till(drinks)
    return @till += drinks.price
  end

end
