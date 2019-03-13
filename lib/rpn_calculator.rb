class RPNCalculator
  attr_reader :numbers

  def initialize
    @numbers = []
  end

  def welcome_message
    puts "Welcome to the RPN Calculator! In Reverse Polish Notation (RPN), the operators follow their operands."
    puts "Press 'i' for instructions on use."
    puts "Press '?' for a link to more info about RPN."
    puts "Press 's' to see the current stack."
    puts "Press 'w' to repeat this welcome message."
    puts "Press 'q' to quit."
  end

  def start
    while true
      user_input = gets.chomp
      verify_operands(user_input)
    end
  end

  private

  def commands
    {
      'q': method(:quit),
      'i': method(:instructions),
      '?': method(:wikipedia),
      'w': method(:welcome_message),
      's': method(:check_stack)
    }
  end

  def operators
    {
      '+': method(:sum),
      '-': method(:subtract),
      '*': method(:multiply),
      '/': method(:divide)
    }
  end

  def verify_operands(user_input)
    if operators.key?(user_input.to_sym) && @numbers.count < 2
      puts "There are not enough operands to complete this operation. Please ensure there are at least two operands."
    else
      run_calculation(user_input)
    end
  end

  def run_calculation(user_input)
    if commands.key?(user_input.to_sym)
      commands[user_input.to_sym].call
    elsif operators.key?(user_input.to_sym)
      operators[user_input.to_sym].call
    else
      @numbers << user_input.to_f
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
    @numbers << result.round(2)
    puts "= #{result.round(2)}"
  end


  def check_stack
    p @numbers
  end

  def instructions
    puts "Type any integer to add to the current stack. Any non-integer value will be converted to 0."
    puts "In order to complete an operation, use one of the following operators: add (+), subtract (-), multiply (*), or divide (/)."
    puts "All operations require at least two elements in the stack."
  end

  def wikipedia
    puts "For more on Reverse Polish Notation, please paste this link into your browser:"
    puts "https://en.wikipedia.org/wiki/Reverse_Polish_notation"
  end

  def quit
    abort "Calculation terminated. Goodbye!"
  end
end
