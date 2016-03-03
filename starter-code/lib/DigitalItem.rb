require_relative 'Item.rb'

class DigitalItem < Item
	attr_reader :quantity

	def initialize(name, price)
		super(name, price)
		@name = name
		@price = price
		@quantity = 1
	end

	def sell amount
		@quantity = 1
	end
	def stock amount
		@quantity = 1
	end

	def return amount
    @quantity += amount
  	end
end