class SpacelyftCLI
  attr_accessor :username

  def spacelyft_app

    system("clear")

############### START SCREEN MUSIC ##################
    pid = fork{ exec 'afplay', "underthestars.mp3" }

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
    company_name = prompt.ask("What Company are you from?", required: true, modify: :capitalize)
    self.username = User.create( username: company_name )

    pid = fork{ exec "killall", 'afplay' }

    sleep(1.seconds)
    puts "Please hold while we locate your account!"
    sleep(4.seconds)
    pid = fork{ exec 'afplay', "comefindme.mp3" }
    system("clear")
    main_menu
  end

  def existing_accounts
    prompt = TTY::Prompt.new
    choice = prompt.select("Choose a File", User.pluck("username"))
    # binding.pry
    self.username = User.find_by(username: choice)
    puts "Welcome back, #{self.username.username}!"
    puts ""
    puts "-------------------------------"
    puts ""
    sleep(3.seconds)
    pid = fork{ exec "killall", 'afplay' }
    sleep(1.seconds)
    pid = fork{ exec 'afplay', "comefindme.mp3" }
    main_menu
  end

  def about_spacelyft
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
    puts "======================================================"
    puts "      ....:::: SPACELYFT - MAIN MENU ::::...."
    puts "======================================================"
    puts ""
    puts "CURRENT ACCOUNT: #{username.username}"
    puts "ACCOUNT ID: #{username}"

    random_weather_array = [
      "GEOSOLAR STORMS IMMINENT",
      "MAGNETIC ANNOMALYS IN THE AREA",
      "A HORDE OF SPACE PIRATES HAVE BEEN SPOTTED!"
    ]
    puts "------------------------------------------------------"
    puts "WEATHER REPORT: #{random_weather_array.sample}"
    puts "------------------------------------------------------"

    prompt = TTY::Prompt.new
    selection = prompt.select("", ["GNN - GALACTIC NEWS NETWORK", "New Mission", "Past Mission Logs", "Inventory", "Go Back"])

    case selection
      when "GNN - GALACTIC NEWS NETWORK"
        galactic_news
      when "New Mission"
        new_mission
      when "Past Mission Logs"
        past_missions
      when "Inventory"
        inventory
      when "Go Back"
        # close_app
        pid = fork{ exec "killall", 'afplay' }
        spacelyft_app
    end
  end







    # pid = fork{ exec "killall", 'afplay' }

end
