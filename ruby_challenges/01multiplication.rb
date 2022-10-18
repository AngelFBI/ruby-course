# frozen_string_literal: true

def multiplication(num1, num2)
  total = 0
  num2.times do
    total += num1
  end
  total
end

puts multiplication(3, 5)
