class RPNCalculator
  attr_accessor :numbers

  def initialize
    @numbers = []
    @running_calculation = true
    @operators = {
      'q': method(:quit),
      'i': method(:instructions),
      'w': method(:wikipedia),
      '+': method(:sum),
      '-': method(:subtract),
      '*': method(:multiply),
      '/': method(:divide)
    }
  end

  def welcome_message
    puts "Welcome to the RPN Calculator! In Reverse Polish Notation (RPN), the operators follow their operands."
    puts "Press 'i' for instructions on use, press 'w' for a link to more info about RPN, and press 'q' to quit."
  end

  def start
    while @running_calculation
      user_input = gets.chomp
      if @operators.key?(user_input.to_sym)
        @operators[user_input.to_sym].call
      else
        @numbers << user_input.to_f
      end
    end
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
    if @numbers[-1] == 0
      puts "Dividing by zero is undefined. Use a different operator."
    else
      quotient = @numbers[-2] / @numbers[-1]
      replace_and_insert(quotient)
    end
  end

  def replace_and_insert(result)
    @numbers = @numbers[0..-3]
    @numbers << result
    puts "= #{result}"
  end

  def instructions
    puts "Type any integer to add to the current stack."
    puts "In order to complete an operation, use one of the following operators: add (+), subtract (-), multiply (*), or divide (/)."
    puts "All operations require at least two elements in the stack."
  end

  def wikipedia
    puts "For more on RPN, please paste this link into your browser:"
    puts "https://en.wikipedia.org/wiki/Reverse_Polish_notation"
  end

  def quit
    @running_calculation = false
    puts "Calculation terminated. Goodbye!"
  end
end
