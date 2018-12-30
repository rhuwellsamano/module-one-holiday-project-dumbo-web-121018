require 'colorize'

class SpacelyftCLI
  attr_accessor :username

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
    self.username = User.create( username: company_name )

    stop_songs
    # pid = fork{ exec "killall", 'afplay' }

    sleep(1.seconds)
    puts "Please hold while we locate your account!"
    sleep(4.seconds)
    play_song("comefindme.mp3")
    # pid = fork{ exec 'afplay', "comefindme.mp3" }
    system("clear")
    main_menu
  end

  def existing_accounts
    prompt = TTY::Prompt.new
    choice = prompt.select("Choose a File", User.pluck("username"), per_page: 7)
    # binding.pry
    self.username = User.find_by(username: choice)
    sleep(1.seconds)
    puts "Welcome back, #{self.username.username}!"
    sleep(3.seconds)
    puts "Hold on while we pull up your account!"
    puts "..."
    sleep(1.seconds)
    puts "....."
    sleep(1.seconds)
    puts "......."
    sleep(1.seconds)
    puts "DONE!"
    sleep(1.seconds)
    stop_songs
    # pid = fork{ exec "killall", 'afplay' }
    sleep(1.seconds)
    play_song("comefindme.mp3")
    # pid = fork{ exec 'afplay', "comefindme.mp3" }
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

    system("clear")

    rockets_ascii
    puts "======================================================"
    puts "      ....:::: SPACELYFT - MAIN MENU ::::...."
    puts "======================================================"
    puts ""
    puts "CURRENT ACCOUNT: #{username.username}"
    puts "ACCOUNT ID: #{username.id} // TERMINAL ID: #{username}"

    random_weather_array = [
      "GEOSOLAR STORMS IN THE VICINITY!",
      "MAGNETIC ANNOMALYS IN THE AREA!",
      "A HORDE OF SPACE PIRATES HAVE BEEN SPOTTED!",
      "GIANT ASTEROIDS HEADING THIS WAY! BRACE FOR LASER REMOVAL!",
      "ALIEN LIFEFORMS ARE TAKING OVER A NEARBY PLANET!"
    ]
    puts "------------------------------------------------------"
    puts "GNN NEWSFLASH: #{random_weather_array.sample}".colorize(:color => :white, :background => :orange)
    puts "SPACELYFT NET WORTH: $#{rand(50000000..1000000000)}"
    puts "------------------------------------------------------"

    prompt = TTY::Prompt.new
    selection = prompt.select("", ["GNN - GALACTIC NEWS NETWORK", "New Mission", "Past Mission Logs", "Shipped Items", "Go Back"])

    case selection
      when "GNN - GALACTIC NEWS NETWORK"
        galactic_news
      when "New Mission"
        new_mission
      when "Past Mission Logs"
        past_missions
      when "Shipped Items"
        shipped_items
      when "Go Back"
        stop_songs
        spacelyft_app
    end
  end

  def galactic_news
    # SHOWS FLAVOR TEXT ABOUT RECENT ACE PILOT DEATH AND OTHER NEWS!
  end

  def new_mission
    play_song("goliath.mp3")
    # PICK ITEMS FROM INVENTORY TO SEND ABOUT
    # PICK DESTINATION
    # PICK ROCKETSHIP TO USE
    # PICK PILOT
    # REVIEW MISSION DETAILS
    # LAUNCH MISSION!


    system("clear")

    rockets_ascii
    puts "======================================================"
    puts "      ....:::: SPACELYFT - NEW MISSION ::::...."
    puts "======================================================"
    puts ""
    puts "CURRENT ACCOUNT: #{username.username}"
    puts "ACCOUNT ID: #{username.id} // TERMINAL ID: #{username}"
    puts ""
    puts "======================================================"
    puts ""

    user_id = username.id

    prompt = TTY::Prompt.new
    mission_name = prompt.ask("What is the Mission Name?") do |q|
        q.required true
        q.modify   :up
      end

    prompt = TTY::Prompt.new
    item = prompt.ask("What item are you sending out?") do |q|
        q.required true
        q.modify   :up
      end

    prompt = TTY::Prompt.new
    destination = prompt.ask("Where do you want us to ship it?") do |q|
        q.required true
        q.modify   :up
      end

    prompt = TTY::Prompt.new
    rocketship = prompt.ask("Which Rocketship would you like to use?") do |q|
        q.required true
        q.modify   :up
      end

    prompt = TTY::Prompt.new
    pilot = prompt.ask("Who would you like to pilot this Mission?") do |q|
        q.required true
        q.modify   :up
      end

    system("clear")

    rockets_ascii
    puts "======================================================"
    puts " ....:::: SPACELYFT - REVIEW MISSION DETAILS ::::...."
    puts "======================================================"
    puts ""
    puts "CURRENT ACCOUNT: #{username.username}"
    puts "ACCOUNT ID: #{username.id} // TERMINAL ID: #{username}"
    puts ""
    puts "======================================================"
    puts ""
    puts "// MISSION NAME: #{mission_name}"
    puts "// ACCOUNT ID: #{user_id}"
    puts "// TERMINAL ID: #{username}"
    puts "// ITEM TO SHIP: #{item}"
    puts "// DESTINATION: #{destination}"
    puts "// ROCKETSHIP: #{rocketship}"
    puts "// PILOT: #{pilot}"
    puts ""

    prompt = TTY::Prompt.new
    choice = prompt.select("Is the information above correct?", ["Yes", "No", "Back To Main Menu"])

    case choice
      when "Yes"
        # CREATE STUFF FIRST THEN CREATE MISSION
        created_item = Item.create
        created_item
        created_item.item_name = item
        item_id = created_item.id
        created_item.save

        created_destination = Destination.create
        created_destination
        created_destination.destination_name = destination
        destination_id = created_destination.id
        created_destination.save

        created_rocketship = Rocketship.create
        created_rocketship
        created_rocketship.rocket_name = rocketship
        rocketship_id = created_rocketship.id
        created_rocketship.save

        created_pilot = Pilot.create
        created_pilot
        created_pilot.pilot_name = pilot
        pilot_id = created_pilot.id
        created_pilot.save

###########################

        mission = Mission.create
        mission.mission_name = mission_name
        mission.user_id = user_id
        mission.item_id = item_id
        binding.pry
        mission.destination_id = created_destination.id ############ <==== FIX THIS
              binding.pry
        mission.rocketship_id = created_rocketship.id
              binding.pry
        mission.pilot_id = created_pilot.id
              binding.pry
        mission.save
      when "No"
        new_mission
      when "Back To Main Menu"
        spacelyft_app
    end

    puts "SUCCESSFULLY CREATED MISSION! USE BINDING.PRY TO LOOK FOR IT!"

    binding.pry

    sleep(3.seconds)
  end

  def past_missions
    # VIEW PREVIOUSLY LAUNCHED MISSION INSTANCES
  end

  def shipped_items
    # DISPLAY ALL USERS ITEMS SHIPPED FROM PREVIOUS MISSIONS
    # ADD/REMOVE ITEMS

    prompt = TTY::Prompt.new
    choice = prompt.select("Choose a File", username.items.pluck("item_name"), per_page: 7)


  end


end
