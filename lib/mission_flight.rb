# module MissionFlight # ? Should i even make it a module or just slam this page of code into the CLI ruby file?
#
# # LAUNCH SCREEN with FLAVOR TEXT
# # SPACEFLIGHT SCREEN with FLAVOR TEXT
# # "YOU'VE BEEN ATTACKED" SCREEN with FLAVOR TEXT
# # YOU SURVIVED SCREEN
#
# def mission_flight_launch
#     system("clear")
#
#     hero = Hero.new
#
#
#     rockets_ascii
#     puts "======================================================"
#     puts "      ....:::: LAUNCHING ROCKET ::::...."
#     puts "======================================================"
#     puts ""
#     puts "CURRENT ACCOUNT: #{username.username}"
#     puts "ACCOUNT ID: #{username.id} // TERMINAL ID: #{username}"
#
#     prompt = TTY::Prompt.new
#     selection = prompt.select("", ["GNN - GALACTIC NEWS NETWORK", "New Mission", "Past Mission Logs", "Shipped Items", "Go Back", "BINDING.PRY"])
#
#     case selection
#       when "GNN - GALACTIC NEWS NETWORK"
#         galactic_news
#       when ""
#         galactic_news
#     end
#   end
#
#   def galactic_news
#     # SHOWS FLAVOR TEXT ABOUT RECENT ACE PILOT DEATH AND OTHER NEWS!
#   end
#
# end
# ======================
#
#
#     enemy = Enemy.new
#
# # Attack the hero
# enemy.attack(hero)
#
# # Attack the dog
# hero.attack(enemy)
#
# binding.pry
#
#
#   if enemy.dead?
#     puts "You defeated the enemy!"
#   else
#     puts "You survived!"
#   end
#
#   if hero.dead?
#     puts "You died!"
#   else
#     puts "You survived!"
#   end
#
# end
