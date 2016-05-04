# You are on your own... good luck.
require_relative 'DigitalItem.rb'
class Movie < DigitalItem
	def initialize name, price
    super(name,price)
  	end

  	def properties(run_time, director, producer)
  		@run_time = run_time
  		@director = director
  		@producer = producer
  	end
end