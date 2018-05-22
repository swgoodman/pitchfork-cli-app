
class PitchforkCLI::CLI
  attr_accessor :lists

  def self.call
    greeting
    list_lists
    menu
    goodbye
  end

  def self.greeting
    puts "                       "
    puts "----------------------------------"
    puts "Pitchfork | Music Lists"
    puts "'The most trusted voice in music.'"
    puts "----------------------------------"
    puts "                       "
  end

  def self.list_lists
    # pulls in info from scraper, instatiates new lists, and prints list of lists

    puts "Select a year below to see its top five albums according to Pitchfork.com."

    @lists = PitchforkCLI::List.scrape_list
    @lists.each.with_index(1) do |list, i|
      puts "#{i}. #{list.year}"
    end
  end

  def self.menu
    # gets input from user (chosen list, exit)

    puts "                       "
    puts "Enter the corresponding number to see the lists' top five albums."
    puts "(Enter 'exit' to leave.)"

    input = nil
      until input == "exit"
      input = gets.strip
        if input.to_i <= PitchforkCLI::List.scrape_list.length.to_i
          the_list = @lists[input.to_i - 1]
          puts "According to Pitchfork, these are the top 5 albums of #{the_list.year}"
          # top_five each with index do |album, i|
          # puts "#. Album"
          # puts "                       "
          # puts "Type 'list' to explore a different year or 'exit' to leave"
        elsif input == "lists"
          list_lists
        else
          puts "Not sure what you want? Type 'list' or 'exit'"
        end
      end
  end

  def self.goodbye
    puts "                       "
    puts "Thanks for stopping by."
    puts "-----------------------"
  end
end
