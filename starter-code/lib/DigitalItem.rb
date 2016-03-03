# You are on your own... good luck.
require_relative 'Item.rb'

class Digital < Item
	attr_reader :quantity
	# @@amount_sold = 0

 	def initialize(name, price)
	    super(name,price)
	    @quantity = 1
	    @weight = -1
  	end

  	def sell
  		true
  	end

  	def stock
  		true
  	end

  	def ship_price
  		false
  	end
end
