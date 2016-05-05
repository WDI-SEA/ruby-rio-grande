# You are on your own... good luck.
require_relative 'Item.rb'

class DigitalItem < Item
	attr_accessor :filesize

def initialize name, price, filesize
    super(name,price, weight)
    @filesize = filesize
    @quantity = 1
    @weight = -1
    @ship_price = nil
	end

	def sell amount
  end

  def stock amount
  end
  def ship_price
  	@ship_price
  end
  def weight
    @weight = -1
  end
end