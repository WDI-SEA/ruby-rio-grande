require_relative 'Item.rb'
class Cd < Item
	attr_accessor :tracks
	attr_accessor :artist
	attr_accessor :runtime

	def initialize name, price, tracks, artist, runtime
    super(name,price, weight)
    @tracks = tracks
    @artist = artist
    @runtime = runtime
  end
end