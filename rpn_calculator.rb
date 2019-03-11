puts 'Welcome to the RPN Calculator. Please input a calculation.'

running_calculation = true
numbers = []

while running_calculation
  user_input = gets.chomp

  if user_input == "q"
    running_calculation = false
    puts "Calculation terminated. Goodbye!"
  elsif user_input == "+"
    puts "Adding!"
    sum = numbers[-1] + numbers[-2]
    numbers = numbers[0..-3]
    numbers << sum
    puts "= #{sum}"
  elsif user_input == "-"
    puts "Subtracting!"
  elsif user_input == "*"
    puts "Multiplying!"
  elsif user_input == "/"
    puts "Dividing!"
  else
    numbers << user_input.to_i
  end
end

print numbers
