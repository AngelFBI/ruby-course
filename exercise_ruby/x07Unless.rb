=begin
1. Un if que se ejecute cuando el input recibido del usuario no sea "Apple"
2. Un loop que ejecute checking for X… y si es par, imprima el número for the loop use numbers 5-5000
=end

puts "input: "
input = gets.chomp
unless input == "Apple"
  puts "No es Apple"
end

for i in 5..50
  #puts i if i.even?
  puts "Checking for number... #{i}"
  next unless i.even?
  puts i
end
