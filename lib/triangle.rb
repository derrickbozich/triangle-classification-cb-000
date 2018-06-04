class Triangle

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if self.equilateral?
      :equilateral
    elsif self.isosceles?
      :isosceles
    elsif self.scalene?
      :scalene
    else
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
      # :idk
    end
  end

  def equilateral?
    if self.inequal?
      false
    elsif @a == @b && @b == @c
      true
    end
  end

  def isosceles?
    if self.inequal?
      false
    elsif @a == @b || @b == @c || @a == @c
      true
    end
  end

  def scalene?
    if self.inequal?
      false
    elsif @a != @b && @b != @c && @a != @c
      true
    end
  end

  def inequal?
    if @a <= 0 || @b <= 0 || @c <= 0
      true
    elsif @a + @b < @c || @b + @c < @a || @c + @b < @a
      true
    else
      false
    end
  end



  class TriangleError < StandardError
    def message
      puts "Your triangle is invalid"
    end
  end
end

triangle = Triangle.new(0, 0, 0)
triangle.kind
