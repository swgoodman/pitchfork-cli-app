
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
    puts "----------------------------------"
    puts "Pitchfork | Music Lists"
    puts "'The most trusted voice in music.'"
    puts "----------------------------------"
    puts "                       "
  end

  def list_lists
    # pulls in info from scraper, instatiates new lists, and prints list of lists
    puts "Select a year below to see its top five albums according to Pitchfork.com."
    # @lists = PitchforkCLI::Lists.all
    puts "1. 2016"
    puts "2. 2015"
    puts "3. 2014"
    puts "4. 2013"
  end

  def menu
    # gets input from user (chosen list, exit)
    puts "                       "
    puts "Enter the corresponding number to see the lists' top five albums."
    puts "(Enter 'exit' to leave.)"
    input = nil
      until input == "exit"
        input = gets.strip
          case input
          when "1"
            puts "2016 top 5"
            puts "                       "
            puts "Type 'list' to choose another list or type 'exit' to leave."
          when "2"
            puts "2015 top 5"
            puts "                       "
            puts "Type 'list' to choose another list or type 'exit' to leave."
          when "3"
            puts "2014 top 5"
            puts "                       "
            puts "Type 'list' to choose another list or type 'exit' to leave."
          when "4"
            puts "2013 top 5"
            puts "                       "
            puts "Type 'list' to choose another list or type 'exit' to leave."
          when "list"
            puts "                       "
            puts "Enter the corresponding number to see the lists' top five albums."
            puts "(Enter 'exit' to leave.)"
            puts "1. 2016"
            puts "2. 2015"
            puts "3. 2014"
            puts "4. 2013"
            puts "                       "
            puts "Enter the corresponding number to see the lists' top five albums."
            puts "(Enter 'exit' to leave.)"
          else
            puts "Invalid entry."
          end
      end
  end

  def goodbye
    puts "                       "
    puts "Thanks for stopping by."
    puts "-----------------------"
  end

end
