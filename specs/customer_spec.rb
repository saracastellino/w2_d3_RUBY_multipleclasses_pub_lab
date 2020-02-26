require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')
require_relative('../customer')
require_relative('../pub')

class TestCustomer < Minitest::Test

  def setup
    @drinks1 = Drink.new("Beer", 8)
    @drinks2 = Drink.new("Gin", 10)
    @drinks3 = Drink.new("Whiskey", 12)
    @drinks = [@drinks1, @drinks2, @drinks3]
    @customer1 = Customer.new("Steven", 50,)
  end

  def test_get_name
    assert_equal("Steven", @customer1.name)
  end

  def test_decrease_wallet
    @customer1.decrease_wallet(@drinks1)
    assert_equal(42, @customer1.wallet)
  end


end
