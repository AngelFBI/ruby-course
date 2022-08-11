def multi(num1, num2)
    num1.to_f * num2.to_f
end

def div(num1, num2)
    num1.to_f / num2.to_f
end

def resta(num1, num2)
    num2.to_f - num1.to_f
end

def mod(num1, num2)
    num1.to_f % num2.to_f
end

puts "Simple calculator"
20.times { print "-" }
puts
puts "Que quieres hacer? 1) multi 2) div 3) resta 4) mod"
prompt = gets.chomp
puts "Primer numero"
num1 = gets.chomp
puts "Segundo numero"
num2 = gets.chomp
if prompt == '1'
    puts "Has elegido multiplicar"
    result = multi(num1, num2)
elsif prompt == '2'
    puts "has elegido dividir"
    result = div(num1, num2)
elsif prompt == '3'
    puts "Has eledigo resta"
    result = resta(num1, num2)
elsif prompt == '4'
    puts "Has elegido mod"
    result = mod(num1, num2)
else
    puts "Option invalida"
end
puts result
