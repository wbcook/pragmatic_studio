# Create a Calculator class that takes two numbers and plus or minus them.
class Calculator
  def initialize a=1, b=1
    @a, @b = a, b
  end
  def plus
    "#{@a} plus #{@b} is #{@a + @b}."
  end
  def minus
    "#{@a} minus #{@b} is #{@a - @b}."
  end
end

calc = Calculator.new(2, 7)
puts calc.inspect
puts calc.plus
puts calc.minus
