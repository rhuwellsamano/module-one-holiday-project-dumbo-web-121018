require_relative '../config/environment.rb'
# require_relative '../lib/loading_screen.rb'
# afplay /underthestars.mp3 &

ActiveRecord::Base.logger.level = 1


load_diz = LoadingScreen.new
load_diz.load_bro

spacelyft_cli = SpacelyftCLI.new
spacelyft_cli.spacelyft_app

### WHEN APP CLOSES OUT, KILLALL AFPLAY WILL TURN OFF MUSIC BEFORE CLOSING APP ###
pid = fork{ exec "killall", 'afplay' }

# A "just in case# System Clear"
system("clear")
