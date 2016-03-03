# You are on your own... good luck.
class DigitalItem
	attr_reader :quantity
	attr_accessor :name, :price, :description, :weight

	def initialize(name, price)
		@name = name
		@price = price
		@quantity = 1
		@description = ""
		@weight = -1
	end

	def sell amount
		return true
  end

  def stock amount
  	return true
  end

  def ship_price
  	false
  end
end