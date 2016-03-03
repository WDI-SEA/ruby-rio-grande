require_relative 'Item.rb'
class Cd < Item
  attr_accessor :tracks, :artist, :playtime

  def initialize name, price, tracks, artist, playtime
    super(name, price)
    @tracks = tracks
    @artist = artist
    @playtime = playtime
  end

end