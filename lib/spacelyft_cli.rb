class SpacelyftCLI
  attr_accessor :username
  def spacelyft_app


    pid = fork{ exec 'afplay', "underthestars.mp3" }


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
    selection = prompt.select("..::MAIN MENU::..", ["New Account", "Existing Account", "About SpaceLyft", "Exit"])

    case selection
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

    prompt = TTY::Prompt.new
    company_name = prompt.ask("What Company are you from?", required: true)
    self.username = User.new( username: company_name )
        pid = fork{ exec "killall", 'afplay' }

############### PROGRESS BAR ##################
        # progress = 'Progress ['
        # iteration_count = 1000
        # iteration_count.times do |i|
        #
        #   # i is number from 0-999
        #   j = i + 1
        #   # how many times the total number is divisible by 100 (I couldn't come up with a great name off the top of my head)
        #   denominator = iteration_count / 100
        #
        #     # add 1 percent every 10 times
        #     if j % denominator == 0
        #       progress << ""
        #       # move the cursor to the beginning of the line with \r
        #       print "\r"
        #       # puts add \n to the end of string, use print instead
        #       print progress + " #{j / denominator} %]"
        #
        #       # force the output to appear immediately when using print
        #       # by default when \n is printed to the standard output, the buffer is flushed.
        #       $stdout.flush
        #       sleep 0.05
        #     end
        #   end
        #   puts "\nDone!"
################################################


    puts "Welcome #{self.username.username}!"
    sleep(1.seconds)
        pid = fork{ exec 'afplay', "comefindme.mp3" }

  end

  def existing_accounts
  end

  def about_spacelyft
  end

  def close_app
  end








    # pid = fork{ exec "killall", 'afplay' }

end
