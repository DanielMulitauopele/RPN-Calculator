class RPNCalculator
  def initialize
    @numbers = []
  end

  def welcome_message
    puts 'Welcome to the RPN Calculator. Please input a calculation.'
  end

  def start
    running_calculation = true

    while running_calculation
      user_input = gets.chomp

      if user_input == "q"
        running_calculation = false
        puts "Calculation terminated. Goodbye!"
      elsif user_input == "+"
        sum
      elsif user_input == "-"
        subtract
      elsif user_input == "*"
        multiply
      elsif user_input == "/"
        divide
      else
        @numbers << user_input.to_i
      end
    end

    p @numbers
  end

  def sum
    sum = @numbers[-2] + @numbers[-1]
    @numbers = @numbers[0..-3]
    @numbers << sum
    puts "= #{sum}"
  end

  def subtract
    diff = @numbers[-2] - @numbers[-1]
    @numbers = @numbers[0..-3]
    @numbers << diff
    puts "= #{diff}"
  end

  def multiply
    product = @numbers[-2] * @numbers[-1]
    @numbers = @numbers[0..-3]
    @numbers << product
    puts "= #{product}"
  end

  def divide
    quot = @numbers[-2] / @numbers[-1]
    @numbers = @numbers[0..-3]
    @numbers << quot
    puts "= #{quot}"
  end
end
