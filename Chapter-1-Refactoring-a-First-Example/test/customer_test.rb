require_relative 'test_helper'

class CustomerTest < Test::Unit::TestCase
  def setup
    @customer = Customer.new('Swapnil')

    @movie1 = Movie.new('Avengers', 0)
    @movie2 = Movie.new('Dark Knight', 1)

    @rental1 = Rental.new(@movie1, 20)
    @rental2 = Rental.new(@movie2, 15)

    @customer.add_rental(@rental1)
    @customer.add_rental(@rental2)
  end

  def test_add_rental_count
    assert_equal 2, @customer.rentals.count
  end

  def test_statement
    refute_nil @customer.statement
  end

  def test_html_statement
    refute_nil @customer.html_statement
  end

  def test_total_charge
    assert @customer.send(:total_charge) > 0
  end

  def test_total_frequent_renter_points
    assert @customer.send(:total_frequent_renter_points) > 0
  end
end
