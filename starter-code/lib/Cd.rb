require_relative 'Item.rb'
class Cd < Item
	attr_accessor :name, :price, :books, :tracks, :artist, :run_time

	def initialize name, price, books, tracks, artist, run_time
		super(name, price, weight)
		@tracks = tracks
		@artist = artist
		@run_time = run_time
	end
end