require_relative 'item.rb'

class Cd < Item
  attr_accessor :tracks, :artist, :runTime
  def initialize(name, price, tracks, artist, runTime)
    super(name, price)
    @tracks = tracks
    @artist = artist
    @runTime = runTime
  end
end
