
class PitchforkCLI::List

  attr_accessor :year, :top_five, :URL

  @@all = []

  def initialize(year)
    @year = year
    @top_five = "THIS IS THE TOP 5"
    # @@all << self
  end

  def self.all
    # returns all instances of lists
    @@all
  end

  def self.scrape_list
    #scrape's list title from site
    doc = Nokogiri::HTML(open("https://pitchfork.com"))
    binding.pry

    lists = doc.search("div.lists").text

    year = doc.search("span.year")[1].text

    list.each do |list|
      list = self.new()

      



  end

  def self.scrape_top_five
    #scrape's top five from each list

  end


end
