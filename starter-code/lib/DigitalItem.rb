# You are on your own... good luck.
require_relative 'Item.rb'
class DigitalItem < Item

	def initialize name, price, filesize
    super(name,price)
  end
end