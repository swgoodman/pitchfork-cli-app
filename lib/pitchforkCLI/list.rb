
class PitchforkCLI::List
  attr_accessor :year, :top_five, :url, :album
  @@all = []

  def initialize
    @url
    @top_five = "THESE ARE THE TOP FIVE"
    @@all << self
  end

  def self.scrape_lists
    #scrape's list title from site
    doc = Nokogiri::HTML(open("https://pitchfork.com"))

    list = doc.search("span.year")[1..10].text.scan(/..../)
    list.each.with_index(1) do |list, i|
      list = self.new
      list.year = doc.search("span.year")[i].text
      path = "#{doc.search('div.lists li a:contains("Albums")')[i-1].attribute('href').text}?page=5"
      list.url = path.insert(0, "https://pitchfork.com")

    end
    @@all
  end

  def url
    @url
  end

  def scrape_top_five
    #scrape's top five from each list

      doc = Nokogiri::HTML(open(self.url))
      binding.pry

      top_five_scraped = []

      #doc.css("album").each do
      #if self.year 

      # list.each.with_index do |list, i|
      #
      #   top_five_scraped <<
      # FETCHES 1-5
      # CONSOLIDATES TO ARRAY = :top_fiv
  end
end
