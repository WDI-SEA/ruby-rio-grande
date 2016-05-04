require_relative 'Item.rb'
class Cd < Item

  attr_accessor :tracks, :artist, :runtime

  def initialize name, price, tracks, artist, runtime
    @tracks = tracks
    @artist = artist
    @runtime = runtime
    super(name,price)
  end

end