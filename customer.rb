class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def decrease_wallet(drinks)
    @wallet -= drinks.price
  end
end
