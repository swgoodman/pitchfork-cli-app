
class PitchforkCLI::CLI

  attr_accessor :lists

  def initialize
    @lists
  end

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
    @lists = PitchforkCLI::List.all
    @lists.each.with_index(1) do |list, i|
      puts "#{i}. #{list.year}"
    end
    binding.pry
  end

  def menu
    # gets input from user (chosen list, exit)

    puts "                       "
    puts "Enter the corresponding number to see the lists' top five albums."
    puts "(Enter 'exit' to leave.)"

    input = nil
      until input == "exit"
        input = gets.strip
          if input.to_i > 0
            the_list = @lists[input.to_i - 1]
            puts "#{the_list.top_five}"
          elsif input == "lists"
            list_lists
          else
            puts "Not sure what you want? Type 'list' or 'exit'"
          end
      end
  end

  def goodbye
    puts "                       "
    puts "Thanks for stopping by."
    puts "-----------------------"
  end

end
