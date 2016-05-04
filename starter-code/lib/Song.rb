require_relative 'DigitalItem.rb'

class Song < DigitalItem

  def initialize (name, price, tracks, artist, run_time, weight,)
    super(name,price)
    @tracks = tracks
    @artist = artist
    @run_time = run_time
    @weight = weight
  end

  attr_accessor :tracks
  attr_accessor :artist
  attr_accessor :run_time
  
  def return(amount)
    puts QUANTITY_CONSTANT
  end

  def weight
    @weight = -1
  end

  def ship_price
    puts false    
  end
  
end