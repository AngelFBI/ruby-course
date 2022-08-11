dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

def get_city_names(somehash)
  somehash.keys
end

def get_area_code(somehash, key)
  somehash[key]
end

# Execution flow
loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N) "
  input=gets.chomp.downcase
  break if input!="y"

  puts "Which city do you want the are code for"
  puts get_city_names(dial_book)
  puts "Enter your selection"
  city=gets.chomp.downcase
  if dial_book.include?(city)
    puts "The area code for #{city} is #{get_area_code(dial_book, city)}"
  else
    puts "You entered a city name not in the dictionary"
  end
end
