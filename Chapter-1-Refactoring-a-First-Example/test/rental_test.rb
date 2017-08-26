require_relative 'test_helper'

class RentalTest < Test::Unit::TestCase
  def setup
    @movie1 = Movie.new('Avengers', 0)
    @movie2 = Movie.new('Dark Knight', 1)
    @rental1 = Rental.new(@movie1, 10)
    @rental2 = Rental.new(@movie2, 105)
  end

  def test_charge_does_not_returns
    refute_nil @rental1.charge
  end

  def test_charge_is_non_zero
    assert @rental1.charge > 0
  end
end
