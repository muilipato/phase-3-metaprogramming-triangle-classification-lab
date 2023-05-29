class Triangle
  attr_accessor :height, :length, :hypotenuse

  def initialize (l, h, hyp)
   @length = l
   @height = h
   @hypotenuse = hyp
  end

  def kind
    check
    if (@length == @height && @length == hypotenuse)
      :equilateral

    elsif (@length == @height || @height == @hypotenuse || @length == @hypotenuse)
      :isosceles
    else
      :scalene
    end



  end

  def check_positive?
    @length>0 && @height>0 && @hypotenuse >0
  end
  def check_triangle_inequality?
    @length+@height > @hypotenuse && @length+@hypotenuse > @height && @height + @hypotenuse > @length
  end


  def check
    raise TriangleError unless check_positive? && check_triangle_inequality?
  end

  class TriangleError < StandardError
  end


  # write code here
end

