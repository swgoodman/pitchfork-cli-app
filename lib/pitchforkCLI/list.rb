
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
  end

  def self.scrape_list
    #scrape's list title from site
    doc = Nokogiri::HTML(open("https://pitchfork.com"))

        binding.pry

    list = doc.search("span.year")[1..10].text.scan(/..../)
    urls = doc.at_css('div.lists a:contains("Albums")')['href']
    url_gang = urls.tap {|link| link["href"]}


    list.each.with_index do |list, i|
      list = self.new
      list.year = doc.search("span.year")[i+1].text
      list.url = doc.at_xpath('//a[text()="Albums"]')
      @@all << list
    end

  end

  def self.scrape_top_five
    #scrape's top five from each list
  end
end
