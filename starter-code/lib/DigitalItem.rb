# You are on your own... good luck.
require_relative 'Item.rb'
class DigitalItem < Item
	attr_accessor :filesize

	def initialize name, price, filesize
    super(name,price)
    @filesize = filesize
	end
end