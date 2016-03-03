require_relative 'DigitalItem.rb'

class Song < DigitalItem
	attr_accessor :run_time, :artists

	def initialize(name, price, run_time, artists)
		super(name, price)
		@run_time = run_time
		@artists = artists
	end
end