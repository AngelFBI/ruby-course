class Example
  def initialize
    $secret_not_well_guarded = 10
    secret_well_guarded = 200
  end
  def modify
    $secret_not_well_guarded +=1
  end
  def modify_2
    puts secret_well_guarded
  end
end
class Example2
  def global_subs
    $secret_not_well_guarded -=1
  end
end
some = Example.new
another = Example2.new
puts $secret_not_well_guarded
another.global_subs
puts $secret_not_well_guarded
# some.modify_2
