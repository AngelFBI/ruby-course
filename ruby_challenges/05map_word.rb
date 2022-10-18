# frozen_string_literal: true

def index_letter(word)
  chars = word.split('')
  index = Hash.new { |k, v| k[v] = [] }
  (0..chars.length - 1).each do |i|
    index[chars[i].to_sym] << i
  end
  index
end

puts index_letter('dodonio')
