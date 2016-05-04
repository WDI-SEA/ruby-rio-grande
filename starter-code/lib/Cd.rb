require_relative 'Item.rb'
class Cd < Item

	def initialize name, price, tracks, artist, runtime
    super(name,price)
  end
end