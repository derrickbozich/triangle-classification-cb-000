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
    elsif side1 
      
  
    end
    
    
  end

  def sum_side(a,b,c)
    a+b > c ? true : false
  end

  def isosceles?
    array = [@a,@b,@c]
  end
  
  class TriangleError < StandardError
    def message
      puts "Your triangle is invalid"
    end
end
