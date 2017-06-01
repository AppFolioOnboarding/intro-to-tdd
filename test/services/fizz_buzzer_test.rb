require 'test_helper'

class FizzBuzzerTest < ActiveSupport::TestCase
  test 'fizz_buzz with 1 returns 1' do
    assert_equal 1, FizzBuzzer.fizz_buzz(1)
  end
end
