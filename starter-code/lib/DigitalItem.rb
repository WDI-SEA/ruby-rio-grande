# You are on your own... good luck.
require_relative 'Item.rb'

class DigitalItem < Item
	attr_accessor :filesize

	def initialize name, price, filesize
    super(name,price)
    @filesize = filesize
    @quantity = 1
	end

	def sell amount
  end

  def stock amount
  end
end