class RPNCalculator
  # running_calculation = true
  # numbers = []
  #
  # while running_calculation
  #   user_input = gets.chomp
  #
  #   if user_input == "q"
  #     running_calculation = false
  #     puts "Calculation terminated. Goodbye!"
  #   elsif user_input == "+"
  #     sum = numbers[-2] + numbers[-1]
  #     numbers = numbers[0..-3]
  #     numbers << sum
  #     puts "= #{sum}"
  #   elsif user_input == "-"
  #     diff = numbers[-2] - numbers[-1]
  #     numbers = numbers[0..-3]
  #     numbers << diff
  #     puts "= #{diff}"
  #   elsif user_input == "*"
  #     product = numbers[-2] * numbers[-1]
  #     numbers = numbers[0..-3]
  #     numbers << product
  #     puts "= #{product}"
  #   elsif user_input == "/"
  #     quot = numbers[-2] / numbers[-1]
  #     numbers = numbers[0..-3]
  #     numbers << quot
  #     puts "= #{quot}"
  #   else
  #     numbers << user_input.to_i
  #   end
  # end
  #
  # print numbers
end
