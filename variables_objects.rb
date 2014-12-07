# Experimenting with formatting String objects.
larry = "larry"
larry_health = 60
curly = "curly"
curly_health = 125
moe = "moe"
moe_health = 100
shemp = "shemp"
shemp_health = 90
puts "#{ larry.capitalize } has a health of #{ larry_health }."
puts "#{ curly.upcase } has a health of #{ curly_health }."
puts "#{ moe.capitalize } has a health of #{ moe_health }.".center(40, '*')
puts "#{ shemp.capitalize.ljust(20, '.') } has a health of #{ shemp_health}."
