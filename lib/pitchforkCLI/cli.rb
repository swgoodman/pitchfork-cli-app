
require 'pry'

class PitchforkCLI::CLI

  def call
    greeting
    list_lists
    menu
    goodbye
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
    # pulls in info from scraper, instatiates new lists, and prints list of lists
  end

  def menu
    # gets input from user (chosen list, exit)
  end

  def goodbye
    # prints goodbye message
  end

end
