puts 'Welcome to the RPN Calculator. Please input a calculation.'

running_calculation = true
numbers = []
current_value = 0

while running_calculation
  numbers << gets.chomp

  if gets.chomp == "q"
    running_calculation = false
  end
end

print numbers
