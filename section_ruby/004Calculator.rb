puts "Simple calculator"
20.times { print "-" }
puts
puts "Please enter your first number"
num1 = gets.chomp
puts "Please enter your second number"
num2 = gets.chomp
puts "The first number multiplied by the second number is: #{num1.to_f * num2.to_f}"
puts "The first number divided by the second number is: #{num1.to_f / num2.to_f}"
puts "The first number subtracted from the second number is: #{num2.to_f - num1.to_f}"
puts "The first number added to the second number is: #{num2.to_f + num1.to_f}"
puts "The first number mod the second number is: #{num1.to_f % num2.to_f}"
