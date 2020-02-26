require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')
require_relative('../customer')
require_relative('../pub')

class TestDrink < Minitest::Test

  def setup
    @drinks1 = Drink.new("Beer", 8)
    @drinks2 = Drink.new("Gin", 10)
    @drinks3 = Drink.new("Whiskey", 12)
    @pub1 = Pub.new("Clansman", 5000, @drinks)
  end

  def test_get_name
    assert_equal("Beer", @drinks1.name)
  end


  end
