require './lib/rpn_calculator'
require './test/test_helper'

class RPNCalculatorTest < MiniTest::Test
  def setup
    @calculator = RPNCalculator.new
  end

  def test_it_exists
    assert_instance_of RPNCalculator, @calculator
  end

  def test_numbers_is_empty_by_default
    expected = []
    actual = @calculator.numbers

    assert_equal expected, actual
  end
end
