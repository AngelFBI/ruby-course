class Shape
    def initialize
        @color="red"
        @filled=true
    end

    def color
        puts @color
    end

    def color=(color)
        @color=color
    end

    def filled
        puts @filled
    end

    def filled=(filled)
        @filled=filled
    end

    def to_s
        puts "Shape[color=#{@color},filled=#{@filled}]"
    end
end

class Circle < Shape
    def initialize
        @radius=1.0
        super()
    end

    def radius
        puts @radius
    end

    def radius=(radius)
        @radius=radius
    end

    def area
        puts Math::PI * (@radius**2)
    end

    def perimeter
        puts Math::PI * (@radius*2)
    end

    def to_s
        puts "Circle[Shape[color=#{@color}, filled=#{@filled}],radius=#{@radius}]"
    end
end

class Rectangle < Shape
    def initialize
        @width=1.0
        @length=1.0
        super()
    end

    def width
        puts @width
    end

    def width=(width)
        @width=width
    end

    def length
        puts @length
    end

    def length=(length)
        @length=length
    end

    def area
        puts @width * @length
    end

    def perimeter
        puts (2*@width)+(2*@length)
    end

    def to_s
        puts "Rectangle[Shape[color=#{@color}, filled=#{@filled}],width=#{@width},length=#{@length}]"
    end
end

class Square < Rectangle
    def initialize
        @side=1.0
        super()
    end

    def side
        puts @side
    end

    def set_side(side)
        @side=side
        @width=side
        @length=side
    end

    def width=(width)
        set_side(width)
    end

    def length=(length)
        set_side(length)
    end

    def to_s
        puts "Square[Rectangle[Shape[color=#{@color}, filled=#{@filled}],width=#{@width},length=#{@length}]]"
    end
end


shape=Shape.new
shape.color
shape.color="blue"
shape.filled
shape.filled=false
puts shape

circle=Circle.new
circle.radius
circle.radius=1
circle.area
circle.perimeter
puts circle

rectangle=Rectangle.new
rectangle.width
rectangle.width=2
rectangle.length
rectangle.length=4
rectangle.area
rectangle.perimeter
puts rectangle

square=Square.new
square.side
square.set_side(2)
square.width=3
square.length=4
puts square
