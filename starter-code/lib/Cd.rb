require_relative 'Item.rb'
class Cd < Item
  attr_accessor :tracks :artist :runtime

  def initialize tracks, artist, runtime
    super("Cd")
    @tracks = tracks
    @artist = artist
    @runtime = runtime
  end
end