# A fundraising app that tracks the funding of various odd projects.
class Project
  def initialize(name="project", funds=0, expire=30)
    @name, @funds, @expire = name.capitalize, funds, expire
  end
  def to_s
    "#{ @name } has $#{ @funds } and expires in #{ @expire } days."
  end
  def loan
    @funds += 25
    puts "Someone loaned $25 to #{@name}!!"
  end
  def expirer
    @expire -= 1
    puts "#{@name} expires soon, make a loan today!!" if @expire < 5
  end
end

wheels = Project.new( "wheels" )
watermelons = Project.new( "watermelons", 725, 5)
cows = Project.new( "cows", 425 )
alpacas = Project.new( "alpacas", 875 )
puts "Welcome".center(45, '*')
wheels.loan
wheels.loan
watermelons.expirer
puts "Projects".center(45, '*')
puts wheels
puts watermelons
puts cows
puts alpacas
puts "Fundraising".center(45, '*')
