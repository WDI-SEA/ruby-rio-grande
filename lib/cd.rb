require_relative 'item.rb'

class Cd < Item
  attr_accessor :name, :price, :tracks, :artist, :run_time

  def initialize(name, price, tracks, artist, run_time)
    super(name, price)
    @tracks = tracks
    @artist = artist
    @run_time = run_time
  end

  def stock(amount)
    @quantity = amount
  end
  
end
