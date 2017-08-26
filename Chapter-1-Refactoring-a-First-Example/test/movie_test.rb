require_relative 'test_helper'

class MovieTest < Test::Unit::TestCase
  def setup
    @movie_reg = Movie.new('Avengers', 0)
    @movie_new = Movie.new('Dark Knight', 1)
    @movie_child = Movie.new('Disney World', 2)
  end

  def test_charge_regular
    assert_equal 2, @movie_reg.charge(1)
    assert_equal 3.5, @movie_reg.charge(3)
  end

  def test_charge_new_release
    assert_equal 3, @movie_new.charge(1)
  end

  def test_charge_childrens
    assert_equal 1.5, @movie_child.charge(1)
    assert_equal 3, @movie_child.charge(4)
  end
end
