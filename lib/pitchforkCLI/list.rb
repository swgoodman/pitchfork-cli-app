
class PitchforkCLI::List

  attr_accessor :year, :top_five, :url

  @@all = []

  def initialize
    @year
    @top_five
    @url
  end

  def self.all
    # returns all instances of lists
    @@all
    puts "this is working"
  end

  def self.scrape_list
    #scrape's list title from site
    doc = Nokogiri::HTML(open("https://pitchfork.com"))

    list = doc.search("span.year")[1..11].text.scan(/..../)

    list.each.with_index do |list, i|
      list = self.new
      list.year = doc.search("span.year")[i].text
      @@all << list
    end
    binding.pry
  end

  def self.scrape_top_five
    #scrape's top five from each list
  end
end
