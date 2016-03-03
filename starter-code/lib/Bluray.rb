require_relative 'Item.rb'
class Bluray < Item
	attr_accessor :producer, :director, :run_time

	def initialize(name, price, run_time, director, producer)
		super(name, price)
		@run_time = run_time
		@director = director
		@producer = producer
	end
end