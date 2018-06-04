class Triangle

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a > 0 && @a == @b && @b == @c
      :equilateral
    elsif self.isosceles?
      :isosceles
    elsif self.scalene?
      :scalene
    else
      begin
        raise TriangleError
      rescue
        
      end
    end


  end

  def sum_side(a,b,c)
    a+b > c ? true : false
  end

  def isosceles?
    if @a + @b < @c
      false
    elsif @a == @b || @b == @c || @a == @c
      true
    end
  end

  def scalene?
    if @a == 0 || @a + @b < @c
      false
    elsif @a != @b && @b != @c && @a != @c
      true
    end
  end

  class TriangleError < StandardError
    def message
      puts "Your triangle is invalid"
    end
end
