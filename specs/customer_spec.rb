require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')
require_relative('../customer')
require_relative('../pub')
require_relative('../food')

class TestCustomer < Minitest::Test

  def setup
    @drinks1 = Drink.new("Beer", 8, 5, 100)
    @drinks2 = Drink.new("Gin", 10, 6, 80)
    @drinks3 = Drink.new("Whiskey", 12, 7, 45)
    @drinks = [@drinks1, @drinks2, @drinks3]
    @customer1 = Customer.new("Steven", 50, 30)
    @food1 = Food.new("Hamburger", 7, 3)
  end

  def test_get_name
    p @drinks1
    assert_equal("Steven", @customer1.name)
  end

  def test_decrease_wallet
    @customer1.decrease_wallet(@drinks1)
    assert_equal(42, @customer1.wallet)
  end

  def test_check_age
    assert_equal(30, @customer1.age)
  end

  def test_increase_drunk_level
    @customer1.increase_drunk_level(@drinks2)
    assert_equal(6, @customer1.drunk_level)
  end

  def test_decrease_drunk_level
    @customer1.increase_drunk_level(@drinks2)
    @customer1.decrease_drunk_level(@food1)
    assert_equal(3, @customer1.drunk_level)


  end

end
