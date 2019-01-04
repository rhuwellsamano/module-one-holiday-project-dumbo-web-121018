class LoadingScreen

  def load_bro

    system("clear")

    ############### PROGRESS BAR ##################
    progress = 'LOADING TERMINAL!! ['

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
    puts " ....:::: Starting SpaceLyft CLI App! ::::...."
    puts "======================================================"
    puts ""


    iteration_count = 1000
    iteration_count.times do |i|

      # i is number from 0-999
      j = i + 1
      # how many times the total number is divisible by 100 (I couldn't come up with a great name off the top of my head)
      denominator = iteration_count / 100

        # add 1 percent every 10 times
        if j % denominator == 0
          progress << ""
          # move the cursor to the beginning of the line with \r
          print "\r"
          # puts add \n to the end of string, use print instead
          print progress + " #{j / denominator} %]"

          # force the output to appear immediately when using print
          # by default when \n is printed to the standard output, the buffer is flushed.
          $stdout.flush
          sleep 0.05
        end
      end
      # puts "\nDone!"
    ################################################

    system("clear")
  end
end
