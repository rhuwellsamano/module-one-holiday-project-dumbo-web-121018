# require 'colorize'
require 'terminal-table/import'

class SpacelyftCLI
  attr_accessor :user, :rocketship_instance

  @@new_mission = []

  def spacelyft_app

    system("clear")

############### START SCREEN MUSIC ##################
  def play_song(string)
    pid = fork{ exec 'afplay', string }
  end

  play_song("underthestars.mp3")

  def stop_songs
    pid = fork{ exec "killall", 'afplay' }
  end

############### ROCKETS ASCII ART ##################
  def rockets_ascii
      puts "    *                                      *       "
      puts "                         *                        "
      puts "                                                 "
      puts "             *                                    "
      puts "                                         *        "
      puts "               __"
      puts "     *         \\ \\_____        *"
      puts "            ###[==_____>"
      puts "               /_/      __                    *"
      puts "                        \\ \\_____"
      puts "          *          ###[==_____>"
      puts "                        /_/"
      puts "                                     *    "
      puts "                                                "
      puts "   *"
      puts "              *                               *"
      puts "                           *"
      puts ""
  end

    rockets_ascii
    puts "======================================================"
    puts " ....:::: Welcome to the SpaceLyft CLI App! ::::...."
    puts "======================================================"

    prompt = TTY::Prompt.new
    selection = prompt.select("", ["New Account", "Existing Accounts", "About SpaceLyft", "Exit"])

    case selection
      when "New Account"
        new_account
      when "Existing Accounts"
        existing_accounts
      when "About SpaceLyft"
        about_spacelyft
      when "Exit"
        close_app
    end

  end

  def new_account

    prompt = TTY::Prompt.new
    company_name = prompt.ask("What Company are you from?") do |q|
      q.required true
      q.modify :up
    end
    self.user = User.create( user_name: company_name )

    stop_songs
    # pid = fork{ exec "killall", 'afplay' }

    sleep(1.seconds)
    puts "Please hold while we locate your account!"
    sleep(2.seconds)
    play_song("comefindme.mp3")
    # pid = fork{ exec 'afplay', "comefindme.mp3" }
    system("clear")
    main_menu
  end

  def existing_accounts
    prompt = TTY::Prompt.new
    choice = prompt.select("Choose a File", User.pluck("user_name"), per_page: 7)
    # binding.pry
    self.user = User.find_by(user_name: choice)
    sleep(0.seconds)
    puts "Welcome back, #{self.user.user_name}!"
    sleep(0.seconds)
    puts "Hold on while we pull up your account!"
    puts "..."
    sleep(0.seconds)
    puts "....."
    sleep(0.seconds)
    puts "......."
    sleep(0.seconds)
    puts "DONE!"
    stop_songs
    sleep(1.seconds)
    play_song("comefindme.mp3")
    main_menu
  end

  def about_spacelyft
    system("clear")
    rockets_ascii
    puts "======================================================"
    puts "            ..:: ABOUT SPACELYFT! ::.."
    puts "======================================================"
    puts ""
    puts "Here's some text about Spacelyft!"
    puts ""
    puts ""

    prompt = TTY::Prompt.new
    selection = prompt.select("", ["Go Back"])

    case selection
      when "Go Back"
        stop_songs
        sleep(1.seconds)
        spacelyft_app
    end


  end

  def close_app
    system("clear")
    rockets_ascii
    puts "======================================================"
    puts "  ..:: Thanks for using the SPACELYFT CLI APP! ::.."
    puts "======================================================"
    sleep(5.seconds)
    system("clear")
  end


  def main_menu

    stop_songs
    sleep(1.seconds)
    play_song("comefindme.mp3")

    system("clear")

    rockets_ascii
    puts "======================================================"
    puts "      ....:::: SPACELYFT - MAIN MENU ::::...."
    puts "======================================================"
    puts ""
    puts "CURRENT ACCOUNT: #{user.user_name}"
    puts "ACCOUNT ID: #{user.id} // TERMINAL ID: #{user}"

    random_weather_array = [
      "GEOSOLAR STORMS IN THE VICINITY!",
      "MAGNETIC ANNOMALYS IN THE AREA!",
      "A HORDE OF SPACE PIRATES HAVE BEEN SPOTTED!",
      "GIANT ASTEROIDS HEADING THIS WAY! BRACE FOR LASER REMOVAL!",
      "ALIEN LIFEFORMS ARE TAKING OVER A NEARBY PLANET!"
    ]
    puts "------------------------------------------------------"
    puts "GNN NEWSFLASH: #{random_weather_array.sample}".colorize(:color => :white)
    puts "SPACELYFT NET WORTH: $#{rand(50000000..1000000000)}"
    puts "------------------------------------------------------"

    prompt = TTY::Prompt.new
    selection = prompt.select("", ["GNN - GALACTIC NEWS NETWORK", "New Mission", "Past Mission Logs", "SPACELYFT.DB", "Go Back", "BINDING.PRY"])

    case selection
      when "GNN - GALACTIC NEWS NETWORK"
        galactic_news
      when "New Mission"
        new_mission
      when "Past Mission Logs"
        past_missions
      when "SPACELYFT.DB"
        spacelyft_database
      when "Go Back"
        stop_songs
        spacelyft_app
      when "BINDING.PRY"
        binding.pry
        main_menu
    end
  end

  def galactic_news
    # SHOWS FLAVOR TEXT ABOUT RECENT ACE PILOT DEATH AND OTHER NEWS!
  end

  def new_mission
    # play_song("goliath.mp3")

    system("clear")

    rockets_ascii
    puts "======================================================"
    puts "      ....:::: SPACELYFT - NEW MISSION ::::...."
    puts "======================================================"
    puts ""
    puts "CURRENT ACCOUNT: #{user.user_name}"
    puts "ACCOUNT ID: #{user.id} // TERMINAL ID: #{user}"
    puts ""
    puts "======================================================"
    puts ""

###################### TESTING #######################################

    prompt = TTY::Prompt.new
    mission_name = prompt.ask("What is the Mission Name?") do |q|
        q.required true
        q.modify   :up
      end

    prompt = TTY::Prompt.new
    selected_choices = prompt.collect do
      key(:item).select("Choose Item(s)", Item.pluck("item_name"))

      key(:destination).select("Choose a Destination", Destination.pluck("destination_name"))

      key(:rocketship).select("Choose a Rocketship", Rocketship.pluck("rocketship_name"))

      key(:pilot).select("Choose a Pilot", Pilot.pluck("pilot_name"))
    end


# selected_choices[:name, :destination, :rocketship, :pilot]
# NOW YOU HAVE A HASH OF ALL YOUR SELECTED INSTANCES *STRINGS* ..
# NOW FIND EACH OF THEIR INSTANCES USING SELECT.. and SAVE EACH INTO their
# OWN VARIABLE

item_instance = Item.all.find_by( item_name: selected_choices[:item] )
destination_instance = Destination.all.find_by( destination_name: selected_choices[:destination] )
rocketship_instance = Rocketship.all.find_by( rocketship_name: selected_choices[:rocketship] )
pilot_instance = Pilot.all.find_by( pilot_name: selected_choices[:pilot] )

# binding.pry # TEST FOR ITEM_INSTANCE!! => WORKS!

######################################################################

    #
    user_id = user.id
    #


    system("clear")

    rockets_ascii
    puts "======================================================"
    puts " ....:::: SPACELYFT - REVIEW MISSION DETAILS ::::...."
    puts "======================================================"
    puts ""
    puts "CURRENT ACCOUNT: #{user.user_name}"
    puts "ACCOUNT ID: #{user.id} // TERMINAL ID: #{user}"
    puts ""
    puts "======================================================"
    puts ""
    puts "// MISSION NAME: #{mission_name}"
    puts "// ACCOUNT ID: #{user.id}"
    puts "// TERMINAL ID: #{user}"
    puts "// ITEM TO SHIP: #{selected_choices[:item]}"
    puts "// DESTINATION: #{selected_choices[:destination]}"
    puts "// ROCKETSHIP: #{selected_choices[:rocketship]}"
    puts "// PILOT: #{selected_choices[:pilot]}"
    puts ""

# binding.pry

    prompt = TTY::Prompt.new
    choice = prompt.select("Is the information above correct?", ["Yes", "No", "Back To Main Menu"])

    case choice
      when "Yes"
        # binding.pry # BINDING TEST - LOOK AT SELECTED_CHOICES VARIABLE
        new_mission = Mission.create
        new_mission.mission_name = mission_name
        new_mission.status = "IN-PROGRESS"
        new_mission.user_id = user.id
        new_mission.destination_id = destination_instance.id
        new_mission.rocketship_id = rocketship_instance.id
        new_mission.pilot_id = pilot_instance.id
        new_mission.enemy_id = Enemy.all.sample.id  # nil # CAN I NIL THIS?
        new_mission.save
        # binding.pry # BINDING TEST - check NEW_MISSION VARIABLE and MISSION.ALL
        @@new_mission = new_mission #<< new_mission
        battle_sequence
      when "No"
        new_mission
      when "Back To Main Menu"
        main_menu
    end

    sleep(3.seconds)
    main_menu ## MIGHT MAKE A LAUNCHING SCREEN TO GO TO INSTEAD..
    # mission_flight_launch ### TESTING MISSION FLIGHT SEQUENCE
    # battle <= GO TO BATTLE / FLIGHT SEQUENCE
  end

  def past_missions
    # VIEW PREVIOUSLY LAUNCHED MISSION INSTANCES
    # mission_pluck = user.missions.pluck("mission_name")
    # item_pluck = user.items.pluck("item_name")
    # destination_pluck = user.destinations.pluck("destination_name")
    # rocket_pluck = user.rocketships.pluck("rocketship_name")
    # pilot_pluck = user.pilots.pluck("pilot_name")
    #
    # puts table(mission_pluck, item_pluck, destination_pluck, rocket_pluck, pilot_pluck)


    prompt = TTY::Prompt.new
    selection = prompt.select("", ["Delete A Mission Log", "Main Menu"])

    case selection
      when "Delete A Mission Log"
        galactic_news
      when "Main Menu"
        main_menu
    end

  end


  ####################################################################################
  ############### M I S S I O N  F L I G H T  S E Q U E N C E ########################
  ####################################################################################

  def battle_sequence
      system("clear")

      stop_songs
      sleep(1.seconds)
      play_song("jumpshot.mp3")

      rockets_ascii
      puts "======================================================"
      puts "      ....:::: READY TO LAUNCH ROCKET ::::...."
      puts "======================================================"
      puts ""
      puts "CURRENT ACCOUNT: #{user.user_name}"
      puts "ACCOUNT ID: #{user.id} // TERMINAL ID: #{user}"
      puts "ROCKET HEALTH: #{@@new_mission.last.rocketship.health}"

      prepare_for_launch_array = [
        "LAUNCHING ROCKET IN 3.. 2... 1...!"
      ]
      puts "------------------------------------------------------"
      puts "SPACELYFT RADIO: #{prepare_for_launch_array.sample}".colorize(:color => :white, :background => :orange)
      puts "------------------------------------------------------"

      prompt = TTY::Prompt.new
      selection = prompt.select("", ["PRESS TO LAUNCH!"])

      system("clear")

      rockets_ascii
      puts "======================================================"
      puts "      ....:::: ROCKET LAUNCHED ::::...."
      puts "======================================================"
      puts ""
      puts "CURRENT ACCOUNT: #{user.user_name}"
      puts "ACCOUNT ID: #{user.id} // TERMINAL ID: #{user}"
      puts "ROCKET HEALTH: #{@@new_mission.last.rocketship.health}"

      rocket_launched_array = [
        "GODSPEED, #{@@new_mission.last.rocketship.rocketship_name}!"
      ]
      puts "------------------------------------------------------"
      puts "SPACELYFT RADIO: #{rocket_launched_array.sample}".colorize(:color => :white, :background => :orange)
      puts "------------------------------------------------------"

      prompt = TTY::Prompt.new
      selection = prompt.select("", ["FULL SPEED AHEAD!"])

      system("clear")

      def enemy1
puts "        \.   \.      __,-''-.__      ./   ./   "
puts "         \.   \`.  \`.-'"" _,=''=._ ""`-.'/  .'/   ./   "
puts "          \`.  \_`-''      _,=''=._      ``-'_/  .'/   "
puts "           \ `-',-._   _.  _,=''=._  ,_   _.-,`-' /   "
puts "            \. /`,-',-._'''  \ _,=''=._ /  '''_.-,`-,'\ ./   "
puts "             \`-'  /    `-._  "       "  _.-'    \  `-'/   "
puts "             /)   (         \    ,-.    /         )   (\   "
puts "         ,-''     `-.       \  /   \  /       .-'     ''`-,   "
puts "       ,'_._         `-.____/ /  _  \ \____.-'         _._`,   "
puts "      /,'   `.                \_/ \_/                .'   `,\   "
puts "     /'       )                  _                  (       `\   "
puts "             /   _,-''`-.  ,++|T|||T|++.  .-''`-,_   \   "
puts "            / ,-'        \/|`|`|`|'|'|'|\/        `-, \   "
puts "           /,'             | | | | | | |             `,\   "
puts "          /'               ` | | | | | '               `\   "
puts "                             ` | | | '   "
puts "                               ` | '   "
puts ""
    end

      enemy1 # PUT ENEMY ASCII HERE
      # rockets_ascii
      puts "======================================================"
      puts "      ....:::: YOU'VE BEEN ATTACKED! ::::...."
      puts "======================================================"
      puts ""
      puts "CURRENT ACCOUNT: #{user.user_name}"
      puts "ACCOUNT ID: #{user.id} // TERMINAL ID: #{user}"
      puts "ROCKET HEALTH: #{@@new_mission.last.rocketship.health}"

      attacked_array = [
        "HOSTILE ENEMY DETECTED!!"
      ]
      puts "------------------------------------------------------"
      puts "SPACELYFT RADIO: #{attacked_array.sample}".colorize(:color => :white, :background => :orange)
      puts "------------------------------------------------------"

# enemy_instance = Enemy.all.find_by( enemy_id: @@new_mission.last.enemy_id)
#
# binding.pry # check enemy instance variable

      prompt = TTY::Prompt.new
      selection = prompt.select("", ["USE LASER TURRETS", "USE MISSILES"])

      case selection
        when "USE LASER TURRETS"
          # @@new_mission.last.rocketship.attack(@@new_mission.last.enemy)
          sleep(1.seconds)
          puts "YOU FIRED YOUR MARK IV LASER TURRETS AT THE ENEMY!"
          puts ""
          sleep(4.seconds)
          puts "ENEMY IS WEAKENING! LET 'EM HAVE IT!"
          puts ""
          sleep(4.seconds)
          puts "YOU DESTROYED THE ENEMY!"
          puts ""
          sleep(2.seconds)
          puts "MISSION COMPLETE!"
          sleep(5.seconds)
          # stop_songs
          sleep(1.seconds)
          main_menu
        when "USE MISSILES"
          # @@new_mission.last.rocketship.attack(@@new_mission.last.enemy)
          sleep(1.seconds)
          puts "YOU LAUNCHED YOUR T-10 MISSILES AT THE ENEMY!"
          sleep(4.seconds)
          puts "ENEMY IS WEAKENING! FIRE ALL MISSILES!"
          sleep(4.seconds)
          puts "YOU DESTROYED THE ENEMY!"
          sleep(2.seconds)
          puts "MISSION COMPLETE!"
          sleep(5.seconds)
          # stop_songs
          sleep(1.seconds)
          main_menu
        end

          # if @@new_mission.last.enemy.dead?
          #   puts "You defeated the enemy!"
          # else
          #   puts "You survived!"
          # end
          #
          # if hero.dead?
          #   puts "You died!"
          # else
          #   puts "You survived!"
          # end

    end

    def galactic_news
      # SHOWS FLAVOR TEXT ABOUT RECENT ACE PILOT DEATH AND OTHER NEWS!
    end

    def spacelyft_database
      puts "HERE'S THE DB"
      binding.pry
      puts table(User.missions.mission_names)
      binding.pry
      sleep(5.seconds)
      main_menu
    end






end
