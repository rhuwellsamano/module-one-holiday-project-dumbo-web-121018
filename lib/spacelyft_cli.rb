class SpacelyftCLI

  def spacelyft_app

    system("clear")

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
    puts " ....:::: Welcome to the SpaceLyft CLI App! ::::...."
    puts "======================================================"
    puts ""
    prompt = TTY::Prompt.new
    choice = prompt.select("..::MAIN MENU::..", ["New Account", "Existing Account", "About SpaceLyft", "Exit"])

    case choice
      when "New Account"
        new_account
      when "Existing Account"
        existing_accounts
      when "About SpaceLyft"
        about_spacelyft
      when "Exit"
        close_app
    end
  end

  def new_account
  end

  def existing_accounts
  end

  def about_spacelyft
  end

  def close_app
  end










end
