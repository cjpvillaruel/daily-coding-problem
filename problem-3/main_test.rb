require_relative 'main'
require 'test/unit'

class TestMain < Test::Unit::TestCase
  def test_main
    # assert_equal(angle('asd', 'asd'), 'Invalid input')
    assert_equal(product_array([1, 2, 3, 4, 5]), [120, 60, 40, 30, 24])
    assert_equal(product_array([3, 2, 1]), [2, 3, 6])
    assert_equal(product_array([3, 0, 1]), [0, 3, 0])
  end
end
