require_relative 'Item.rb'
class Cd < Item
	attr_accessor :artist, :run_time, :track

	def initialize(track, price, name, artist, run_time )
		super(name,price)
		@track = track
		@artist = artist
		@run_time = run_time
	end

end