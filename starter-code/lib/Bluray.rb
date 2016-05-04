require_relative 'Item.rb'
class Bluray < Item

	def initialize name, price, runtime, director, producer
    super(name,price)
  end
end