require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')
require_relative('../customer')
require_relative('../pub')
require_relative('../food')

class TestFood < Minitest::Test

  def setup
    @drinks1 = Drink.new("Beer", 8, 5, 100)
    @drinks2 = Drink.new("Gin", 10, 6, 80)
    @drinks3 = Drink.new("Whiskey", 12, 7, 45)
    @drinks = [@drinks1, @drinks2, @drinks3]
    @pub1 = Pub.new("Clansman", 5000, @drinks)
    @customer1 = Customer.new("Steven", 50, 30)
    @customer2 = Customer.new("Sara", 50, 20)
    @food1 = Food.new("Hamburger", 7, 3)
  end

  def test_get_name
    assert_equal("Hamburger", @food1.name)
  end

  def test_get_price
    assert_equal(7, @food1.price)
  end

  def method_name

  end






end
