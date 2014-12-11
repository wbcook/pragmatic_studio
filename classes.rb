# Encapsulating behaviors and states of larry, curly, and moe using classes, to_s, and initialize.
class Player
  def initialize name, health=100
    @name, @health = name.capitalize, health
  end
  def to_s
    "I'm '#{@name}'!".ljust(20, '.') + " [Health: #{@health}]"
  end
  
  def w00t
    @health += 15
    puts "#{@name} got w00ted! [#{@health}]"
  end
  def blam
    @health -= 10
    puts "#{@name} got blammed! [#{@health}]"
  end
end

larry = Player.new "larry", 90
puts larry
moe = Player.new "moe", 120
puts moe
curly = Player.new "curly", 60
puts curly
curly.blam
curly.w00t
puts curly
