class RPNCalculator
  def initialize
    @numbers = []
    @hash = {
      'q': method(:quit),
      '+': method(:sum),
      '-': method(:subtract),
      '*': method(:multiply),
      '/': method(:divide)
    }
  end

  def welcome_message
    puts 'Welcome to the RPN Calculator. Please input a calculation.'
  end

  def start
    running_calculation = true

    while running_calculation
      user_input = gets.chomp

      if user_input == 'q'
        running_calculation = false
        quit
      elsif @hash.key?(user_input)
        @hash[user_input]
      else
        @numbers << user_input.to_i
      end
    end

    p @numbers
  end

  def sum
    sum = @numbers[-2] + @numbers[-1]
    replace_and_insert(sum)
  end

  def subtract
    diff = @numbers[-2] - @numbers[-1]
    replace_and_insert(diff)
  end

  def multiply
    product = @numbers[-2] * @numbers[-1]
    replace_and_insert(product)
  end

  def divide
    quotient = @numbers[-2] / @numbers[-1]
    replace_and_insert(quotient)
  end

  def replace_and_insert(result)
    @numbers = @numbers[0..-3]
    @numbers << result
    puts "= #{result}"
  end

  def quit
    puts "Calculation terminated. Goodbye!"
  end
end
