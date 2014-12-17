# Encapsulating behaviors and states of larry, curly, and moe
# using classes, to_s, and initialize.
class Player
  attr_reader :health
  attr_accessor :name
  def initialize name, health=100
    @name, @health = name.capitalize, health
  end
  def to_s
    "I'm '#{@name}'!".ljust(20, '.') + " [Health: #{@health}] [Score: #{score}]"
  end
  def w00t
    @health += 15
    puts "#{@name} got w00ted! [#{@health}]"
  end
  def blam
    @health -= 10
    puts "#{@name} got blammed! [#{@health}]"
  end
  def score
    @name.length + @health
  end
  def name=(new_name)
    @name = new_name.capitalize
  end
end

# Output goes here...
larry = Player.new "larry"
moe = Player.new "moe", 60
curly = Player.new "curly", 125

players = [larry, moe, curly]
larry.name = "lawrence"
players.pop
players.push Player.new "shemp"
puts "There are #{players.size} players in the game:"
players.each do |player|
  puts player.blam
  puts player.w00t
  puts player.w00t
  puts player
end

# EOF :)
