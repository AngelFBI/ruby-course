# frozen_string_literal: true

def new_number?(num)
  numbers = num.digits.reverse
  return true if numbers.include?(0)

  (1..numbers.length - 1).each do |i|
    return false if numbers[0] > numbers[i]
  end
  true
end

puts new_number?(859)
puts new_number?(30)
puts new_number?(589)
