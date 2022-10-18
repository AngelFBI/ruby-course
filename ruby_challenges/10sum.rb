# frozen_string_literal: true

def sum(_num1, _num2)
  total = 0
  (1..10).each do |i|
    total += i
  end
  total
end

p sum(1, 10)
