
class PitchforkCLI::List

  attr_accessor :year, :top_five, :URL

  @@all = []

  def initialize(year)
    @year = year
    # @@all << self
  end

  def self.all
    # returns all instances of lists

    list_1 = self.new(2016)
    list_2 = self.new(2015)
    list_3 = self.new(2014)

    [list_1, list_2, list_3]


  end
end
