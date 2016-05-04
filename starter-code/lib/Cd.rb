require_relative 'Item.rb'
class Cd < Item

	def initialize name, price
    super(name,price)
  	end

  	def properties(tracks, artist, time_length)
  		@tracks = number
  		@artist = artist
  		@time_length = time_length
  	end
end