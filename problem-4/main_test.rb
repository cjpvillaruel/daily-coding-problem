# run the test case using ruby main_test.rb

require_relative 'main'
require 'test/unit'

class TestMain < Test::Unit::TestCase
  def test_main
    assert_equal(get_missing_pos_int([11, 4, 10, 15, 3, 7]), 1)
    assert_equal(get_missing_pos_int([3, 4, -1, 1]), 2)
    assert_equal(get_missing_pos_int([1, 2, 0]), 3)
    assert_equal(get_missing_pos_int([-1, 9, 1]), 2)
  end
end
