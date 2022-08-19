# keyword splat argument methods must be single param
def example(**kargs)
  kargs.each do |k, v|
    puts k
    puts "is color #{v}"
  end
end

objects = {
  "Controller": "blue",
  "Computer": "red",
  "Headset": "orange",
  "Microphone": "black",
  "Mouse": "white"
}
example **objects
puts "-"*10

# función con splat arguments, y argumento normal
def example2(value = false, *args)
  if value
    puts "They are happy"
    puts args
  else
    puts "They are unhappy"
  end
end
example2(true, 2, 3, 4, 5)
puts "-"*10

# función con argumento opcional y argumento normal
def example3(color = "white", number)
  puts color, number
end
example3(5)
example3("red", 10)
