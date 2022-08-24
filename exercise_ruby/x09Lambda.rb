#Modificar una variable definida dentro de este metodo
def method1
  var1 = 'Hola'
  change_variable = -> {
    var1 = 'Modified string'
  }
  change_variable.call
  var1
end
puts method1

# Return en el lambda y no debe de salir el metodo sino el lambda
def method2
  puts 'Hola'
  lambda_return = -> {
    return 5
  }
  puts lambda_return.call
  puts 'something'
end
puts method2

#crear una clase con un metodo protegido
#llamar el metodo protejido dentro del publico
#llamar al metodo publico mediante public instance methods
class MethodsClass
  def public_method
    protected_method
  end

  protected
  def protected_method
    puts "I'm a protected method"
  end
end
obj = MethodsClass.new
obj.public_method

#Definir un modulo con una classe dentro
module ClassModule
  class ClassExample
    def say_something
      puts "Hello"
    end
  end
  def call_class
    object = ClassExample.new
    object.say_something
  end
end

class Example
  include ClassModule
end

example = Example.new
example.call_class
