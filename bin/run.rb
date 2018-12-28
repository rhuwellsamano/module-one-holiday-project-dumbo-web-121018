require_relative '../config/environment.rb'

system 'clear'

spacelyft_cli = SpacelyftCLI.new
spacelyft_cli.spacelyft_app
