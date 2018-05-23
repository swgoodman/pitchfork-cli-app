
class PitchforkCLI::Album
  attr_accessor :name, :artist, :description
  @@all = []

  def initialize(name, artist, description)
    @name = name
    @artist = artist
    @description = description
  end
end
