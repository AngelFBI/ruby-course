saludo="HOLA"
despedida="adios"
name="Angel"

puts saludo + " " + despedida + name

puts saludo.class
puts "".nil?
puts nil.nil?
puts "".empty?
puts despedida.length
puts saludo.reverse

sentence = "My name is #{name}"
puts sentence
sentence = sentence.sub("name","nombre")
puts sentence

puts 'Hola \'Angel\''

name = gets.chomp

puts "My name is #{name}"
