require_relative 'Item.rb'
class Bluray < Item
	attr_reader :quantity
	attr_accessor :name, :price, :runtime, :director, :producer

	def initialize name, price, runtime, director, producer
		super(name, price)
		@runtime = runtime
		@director = director
		@producer = producer
		@quantity = 0
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