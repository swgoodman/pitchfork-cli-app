
class PitchforkCLI::List

  attr_accessor :year, :top_five

  @@all = []

  def initialize(year)
    @year = year
    @@all << self
  end

  def self.all
    # returns all instances of lists
    puts "testing, testing, one, two, three."
  end
end
