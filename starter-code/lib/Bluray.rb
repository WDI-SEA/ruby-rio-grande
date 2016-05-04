require_relative 'Item.rb'
class Bluray < Item
	attr_accessor :runtime
	attr_accessor :director
	attr_accessor :producer

	def initialize name, price, runtime, director, producer
    super(name,price, weight)
    @runtime = runtime
    @director = director
    @producer = producer
    @language = "English"
  end
end