
require 'pry'

class PitchforkCLI::CLI

  def call
    greeting
    list_lists
  end

  def greeting
    puts "-----------------------"
    puts "Pitchfork | Music Lists"
    puts "'The most trusted voice in music.'"
    puts "-----------------------"
    puts "                       "
    puts "Select a year below to see its top five albums according to Pitchfork.com."
  end

  def list_lists

  end

end
