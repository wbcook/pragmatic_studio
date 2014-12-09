# A fundraising app that tracks the funding of various odd projects.
def get_time
  time = Time.new
  time.strftime("%I:%M:%S")
end

def show_project( project, funds )
  "*#{ project.capitalize }".ljust(20, '.') +
  "$#{ funds }".ljust(20, '.') +
  "#{get_time}*"
end

puts "Projects".center(49, '*')
puts show_project( "wheels", 550 )
puts show_project( "watermelons", 725)
puts show_project( "cows", 425 )
puts show_project( "alpacas", 875 )
puts "Loans/Funds".center(49, '*')
