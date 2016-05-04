require_relative 'Item.rb'

class Cd < Item
  
def initialize(name, price, tracks, artist, run_time, quantity, weight)
    super(name, price)
    @tracks = tracks
    @artist = artist
    @run_time = run_time
    @quantity = quantity
    @weight = weight
end
  attr_accessor :tracks
  attr_accessor :artist
  attr_accessor :run_time
  attr_accessor :quantity
  attr_accessor :weight
  
  def return(amount)
    puts @quantity += amount
  end

    
end