
class PitchforkCLI::List
  attr_accessor :year, :top_five, :url
  @@all = []

  def initialize
    @url
    @top_five
    @@all << self
  end

  def self.scrape_list
    #scrape's list title from site
    doc = Nokogiri::HTML(open("https://pitchfork.com"))

    list = doc.search("span.year")[1..10].text.scan(/..../)
    list.each.with_index(1) do |list, i|
      list = self.new
      list.year = doc.search("span.year")[i].text
      list.url = doc.search('div.lists li a:contains("Albums")')[i-1].attribute('href').text.insert(0, "https://pitchfork.com")
    end
    @@all
  end

  def self.url
    @url
  end

  def self.scrape_top_five
    #scrape's top five from each list
    self.scrape_list.each do
      doc = Nokogiri::HTML(open("#{self.url}"))

      self.top_five = doc.search("span.year")[i].text
    end
    binding.pry
  end
end
