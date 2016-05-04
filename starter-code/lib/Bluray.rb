require_relative 'Item.rb'
class Bluray < Item
	def initialize name, price
    super(name,price)
  	end

  	def properties(run_time, director, producer)
  		@run_time = run_time
  		@director = director
  		@producer = producer
  	end
end