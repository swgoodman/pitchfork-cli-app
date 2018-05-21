
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

    list_1 = self.new(2016)
    list_2 = self.new(2015)
    list_3 = self.new(2014)

    [list_1, list_2, list_3]
  end

  def self.scrape_list
    #scrape's list title from site

  end

  def self.scrape_top_five
    #scrape's top five from each list

  end


end
