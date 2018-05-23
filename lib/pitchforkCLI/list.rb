
class PitchforkCLI::List
  attr_accessor :year, :top_five, :url, :album
  @@all = []

  def initialize
    @url
    @top_five = []
    @@all << self
  end

  def url
      @url
  end

  def self.scrape_lists
    #scrape's list title from site
    doc = Nokogiri::HTML(open("https://pitchfork.com"))

    list = doc.search("span.year")[1..10].text.scan(/..../)
    list.each.with_index(1) do |list, i|
      list = self.new
      list.year = doc.search("span.year")[i].text.to_i
      path = "#{doc.search('div.lists li a:contains("Albums")')[i-1].attribute('href').text}?page=5"
      list.url = path.insert(0, "https://pitchfork.com")

    end
    @@all
  end

  def scrape_top_five
    #scrape's top five from each list

      doc = Nokogiri::HTML(open(self.url))
      # binding.pry
      top_five_location = []
      doc.search("div.list-blurb")[5..9].each do |album|
        top_five_location << album
      end
      if self.year >= 2013
        top_five_location.each.with_index(5) do |album, i|
          album = PitchforkCLI::Album.new

          album.rank = doc.search("div.rank")[i].text.to_i
          album.name = doc.search("h2.list-blurb__work-title")[i].text
          album.artist = doc.search("ul.artist-links a")[i].text

          self.top_five << album
        end
      end

  end
end
