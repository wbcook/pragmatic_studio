# A fundraising app that tracks the funding of various odd projects.
cattle = "cattle"
cattle_funds = 1000
wheels = "wheels"
wheels_funds = 525
watermelons = "watermelons"
watermelons_funds = 1250
alpacas = "alpacas"
alpacas_funds = 750

print "Projects".center(20, '.')
puts "Funding".center(20, '.')
puts "#{ cattle.capitalize } has funding of #{ cattle_funds }."
puts "#{ wheels.upcase } has funding of #{ wheels_funds }."
puts "#{ watermelons.capitalize } has funding of #{ watermelons_funds }.".center(45, '*')
puts "#{ alpacas.capitalize.ljust(25, '.') } has funding of #{ alpacas_funds }."
