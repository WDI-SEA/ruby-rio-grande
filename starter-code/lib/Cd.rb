require_relative 'Item.rb'
class Cd < Item
  attr_accessor :tracks, :artist, :runtime

  def initialize(name, price, tracks, artist, runtime)
    super(name,price)
    @tracks = tracks
    @artist = artist
    @runtime = runtime
  end
end