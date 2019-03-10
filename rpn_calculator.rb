puts 'Welcome to the RPN Calculator. Please input a calculation.'

running_calculation = true
current_value = 0
numbers = []

while running_calculation
  user_input = gets.chomp

  if user_input == "q"
    running_calculation = false
    puts "Calculation terminated. Goodbye!"
  end

  numbers << user_input.to_i unless user_input == "q"
end

print numbers
