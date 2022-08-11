a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts a.empty?
puts a.include?(2)
print "#{a.reverse}\n"
print "#{a.shuffle}\n"

a.push(30)
a << 25
a.unshift(30)

print "#{a}\n"
a.pop

print "#{a}\n"
print "#{a.uniq}\n"

b=(0..25).to_a
print "#{b}\n"

c=(0..99).to_a.shuffle!
print "#{c}\n"

c.each { |i| print "#{i} "}
puts

d=("jose".."josh").to_a
print "#{d}\n"

d.each {|name| puts "Hello #{name.capitalize}"}

print "#{c.select{|number|number.odd?}}\n"

puts d.join("-")
