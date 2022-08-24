# def fibonacci(number)
#   return 0 if number == 1
#   return 1 if number == 2

#   fibonacci(number - 1) + fibonacci(number - 2)
# end

# puts fibonacci(5)


def fibonacci(number)
  return 0 if number == 1
  return 1 if number == 2

  fibonacci(number - 1) + fibonacci(number - 2)
end

(1..10).each { |i| puts fibonacci(i)}
