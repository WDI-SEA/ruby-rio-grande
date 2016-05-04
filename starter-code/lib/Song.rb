require_relative 'DigitalItem.rb'

class Song < DigitalItem
	attr_reader :quantity
	attr_accessor :name, :price, :runtime, :artist

	def initialize name, price, quantity, runtime, artist
		super(name, price, quantity)
		@runtime = runtime
		@artist = artist
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