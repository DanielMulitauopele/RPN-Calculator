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

  def test_verify_operands_fail
    expected = "There are not enough operands to complete this operation. Please ensure there are at least two operands.\n"
    actual = @calculator.verify_operands('+')

    assert_output( stdout = expected ) { @calculator.verify_operands('+') }
  end

  def test_sum_method
    @calculator.numbers = [5, 6]
    @calculator.sum
    expected = [11]
    actual = @calculator.numbers

    assert_equal expected, actual
  end

  def test_subtract_method
    @calculator.numbers = [6, 3]
    @calculator.subtract
    expected = [3]
    actual = @calculator.numbers

    assert_equal expected, actual
  end

  def test_multiply_method
    @calculator.numbers = [3, 3]
    @calculator.multiply
    expected = [9]
    actual = @calculator.numbers

    assert_equal expected, actual
  end

  def test_divide_method
    @calculator.numbers = [9, 3]
    @calculator.divide
    expected = [3]
    actual = @calculator.numbers

    assert_equal expected, actual
  end
end
