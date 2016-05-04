require_relative 'Item.rb'
	
class Cd < Item
	attr_reader :quantity
	attr_accessor :name, :price, :tracks, :artist, :runtime

		def initialize name, price, tracks, artist, runtime
			super(name, price)
			@tracks = tracks
			@artist = artist
			@runtime = runtime
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