# A fundraising app that tracks the funding of various odd projects.
class Project
  attr_reader :funds, :goal, :expire
  attr_accessor :name
  def initialize(name="project", funds=0, goal=25, expire=30)
    @name, @funds, @goal, @expire = name.capitalize, funds, goal, expire
  end
  def to_s
    "#{ @name } has $#{ @funds }, $#{difference} to go, and expires in #{ @expire } days."
  end
  def loan
    @funds += 25
    puts "Someone loaned $25 to #{@name}!!"
  end
  def expirer
    @expire -= 1
    puts "#{@name} expires soon, make a loan today!!" if @expire < 5
  end
  def name=(new_name)
    @name = new_name.capitalize
  end
  def difference
    @goal - @funds
  end

end

# Output goes here...
wheels = Project.new( "wheels", 250, 1000, 25 )
watermelons = Project.new( "watermelons", 500, 1250, 4)
alpacas = Project.new( "alpacas", 1975, 2000, 12 )
projects = [wheels, watermelons, alpacas]
puts "There are #{projects.size} projects:"
projects. each do |project|
  project.loan
  project.expirer
  puts project unless project.difference <= 0
  puts "#{project.name} is fully funded with #{project.funds}, hooray!" if project.difference <= 0
end
puts "Fundraising".center(45, '*')

# EOF
