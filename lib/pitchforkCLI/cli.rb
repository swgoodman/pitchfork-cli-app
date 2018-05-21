
require 'pry'

class PitchforkCLI::CLI

  def call
    greeting
    list_lists
    menu
    goodbye
  end

  def greeting
    puts "                       "
    puts "-----------------------"
    puts "Pitchfork | Music Lists"
    puts "'The most trusted voice in music.'"
    puts "-----------------------"
    puts "                       "
  end

  def list_lists
    # pulls in info from scraper, instatiates new lists, and prints list of lists
    puts "Select a year below to see its top five albums according to Pitchfork.com."
    # @lists = PitchforkCLI::Lists.all
    puts "-----------------------"
    puts "1. 2016"
    puts "2. 2015"
    puts "3. 2014"
    puts "4. 2013"
  end

  def menu
    # gets input from user (chosen list, exit)
    puts "Enter the corresponding number to see the lists' top five albums:"
    input = nil
      while input != "exit"
        input = gets.strip
        case input
        when "1"
          puts "2016 top 5"
        when "2"
          puts "2015 top 5"
        when "3"
          puts "2014 top 5"
        when "4"
          puts "2013 top 5"
        end
      end
  end

  def goodbye
    puts "Thanks for stopping by."
    puts "-----------------------"
  end

end
