# You are on your own... good luck.
require_relative 'DigitalItem.rb'
class Cd < DigitalItem

	def initialize name, price
    super(name,price)
  	end

  	def properties(tracks, artist, time_length)
  		@artist = artist
  		@time_length = time_length
  	end
end