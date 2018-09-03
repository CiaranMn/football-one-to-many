#!/usr/bin/env ruby

require_relative 'lib/FootballTeam.rb'
require_relative 'lib/Player.rb'
require 'pry'

cpfc = FootballTeam.new("Crystal Palace", "Premiership")
zaha = cpfc.new_player("Zaha", "Forward")
puncheon = cpfc.new_player("Puncheon", "Midfield")

ffc = FootballTeam.new("Flatiron FC", "First Division")
dan = ffc.new_player("Dan", "Forward")
ed = ffc.new_player("Ed", "Attacking Midfield")

binding.pry
