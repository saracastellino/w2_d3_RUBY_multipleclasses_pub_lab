require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')
require_relative('../customer')
require_relative('../pub')

class TestPub < Minitest::Test

  def setup
    @drinks1 = Drink.new("Beer", 8, 5)
    @drinks2 = Drink.new("Gin", 10, 6)
    @drinks3 = Drink.new("Whiskey", 12, 7)
    @drinks = [@drinks1, @drinks2, @drinks3]
    @pub1 = Pub.new("Clansman", 5000, @drinks)
    @customer1 = Customer.new("Steven", 50, 30)
    @customer2 = Customer.new("Sara", 50, 20)
  end

  def test_get_name
    assert_equal("Clansman", @pub1.name)
  end

  def test_get_drinks
    assert_equal(@drinks, @pub1.drinks)
  end

  def test_number_of_drinks
    assert_equal(3, @pub1.number_of_drinks)
  end

  def test_increase_till
    @pub1.increase_till(@drinks1)
    assert_equal(5008, @pub1.till)
  end

  def test_check_age
    assert_equal(30, @customer1.age)
  end

  def test_can_serve
    @pub1.can_serve(@drinks1, @customer1)
    assert_equal(5008, @pub1.till)
  end

  def test_can_t_serve
    @pub1.can_serve(@drinks3, @customer2)
    assert_equal(5000, @pub1.till)
  end

  
end
