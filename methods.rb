# Define methods to keep our code DRY.
def game_time
  time = Time.new
  time.strftime("%I:%M:%S")
end

def say_hello( name, health=100 )
  "*I'm #{ name.capitalize }!".ljust(20, '.') + 
  "[#{ health } health]".ljust(21, '.') +
  "#{ game_time }*"
end

puts "Players".center(50, '*')
puts say_hello( "larry", 60 )
puts say_hello( "curly", 125 )
puts say_hello( "moe", 90 )
puts say_hello( "shemp" )
puts "Studio_Game".center(50, '*')
