require_relative 'Item.rb'

class DigitalItem < Item
	attr_reader :quantity, :weight
	attr_accessor :name, :price

	def initialize name, price, quantity
		super(name, price)
		@quantity = 1
		@weight = -1
	end

	def return amount
    @quantity += amount
    true
  end

  def ship_price
    @@ship_price_per_oz * @weight
    if @weight == -1
      false
    end
  end

end