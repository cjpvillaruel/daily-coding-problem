require_relative 'main'
require 'test/unit'

class TestMain < Test::Unit::TestCase
  def test_main
    # assert_equal(angle('asd', 'asd'), 'Invalid input')
    assert_equal(check_sum_in_list([11, 4, 10, 15, 3, 7], 17), true)
    assert_equal(check_sum_in_list([11, 4, 10, 15, 3], 17), false)
    assert_equal(check_sum_in_list([11, 4, 10, 'a', 3], 17), false)
  end
end
