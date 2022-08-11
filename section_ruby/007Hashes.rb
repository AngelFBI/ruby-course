my_details = {'name' => 'mashrur', 'favcolor' => 'red'}
puts my_details["favcolor"]
myhash = {a: 1, b: 2, c: 3, d: 4}
puts myhash[:c]
myhash[:d] = 7
myhash[:name] = "Mashrur"
myhash.delete(:d)
print "#{myhash.keys}\n"
print "#{myhash.values}\n"
myhash.each { |somekey, somevalue| print "#{somevalue}" }
puts

myhash[:d] = 4

myhash.each { |somekey, somevalue| puts "The key is #{somekey} and the value is #{somevalue}" }
myhash.each { |k, v| myhash.delete(k) if v.class==String }
print "#{myhash}\n"
myhash.each { |k, v| myhash.delete(k) if v > 3 }
print "#{myhash}\n"
myhash.select { |k, v| v.odd? }
print "#{myhash}\n"
