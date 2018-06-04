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
      # begin
      #   raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
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
    if @a + @b < @c || @b + @c < @a || @c + @b < @a
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
