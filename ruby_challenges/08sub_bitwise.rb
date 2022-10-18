# frozen_string_literal: true

def sub_bitwise(num1, num2)
  while num2 != 0
    borrow = (~num1) & num2
    num1 = num1 ^ num2
    num2 = borrow << 1
  end
  num1
end

puts sub_bitwise(60, 14)
