# frozen_string_literal: true

def reverse_string(string)
  return string if string.length == 1

  letter = string.slice!(0)
  reverse_string(string) + letter
end

puts reverse_string('hola amigos')
