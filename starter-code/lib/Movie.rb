require_relative 'DigitalItem.rb'

class Movie < DigitalItem
	attr_reader :quantity
	attr_accessor :name, :price, :runtime, :director, :producer

	def initialize name, price, quantity, runtime, director, producer
		super(name, price, quantity)
		@runtime = runtime
		@director = director
		@producer = producer
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