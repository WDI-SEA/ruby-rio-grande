require_relative 'DigitalItem.rb'

class Movie < Digital_Item
	attr_accessor :director, :producer, :run_time

	def initialize(name, price, run_time, director, producer )
		super(name,price)
		@director = director
		@producer = producer
		@run_time = run_time
	end
end