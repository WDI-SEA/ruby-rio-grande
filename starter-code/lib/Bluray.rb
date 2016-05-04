require_relative 'Item.rb'
class Bluray < Item

	def initialize name, price, runtime, director, producer
		super(name, price)
		@runtime = runtime
		@director = director
		@producer = producer

end