require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')
require_relative('../customer')
require_relative('../pub')
require_relative('../food')

class TestDrink < Minitest::Test

  def setup
    @drinks1 = Drink.new("Beer", 8, 5, 100)
    @drinks2 = Drink.new("Gin", 10, 6, 80)
    @drinks3 = Drink.new("Whiskey", 12, 7, 45)
    @drinks = [@drinks1, @drinks2, @drinks3]
    @pub1 = Pub.new("Clansman", 5000, @drinks)
    @customer1 = Customer.new("Steven", 50, 30)
  end

  def test_get_name
    assert_equal("Beer", @drinks1.name)
  end

  def test_get_quantity
    assert_equal(100, @drinks1.quantity)
  end



  end
