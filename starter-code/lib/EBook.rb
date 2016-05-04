require_relative 'DigitalItem.rb'

class EBook < DigitalItem
	attr_reader :quantity
	attr_accessor :name, :price, :pages, :author

	def initialize name, price, quantity, pages, author
		super(name, price, quantity)
		@pages = pages
		@author = author
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