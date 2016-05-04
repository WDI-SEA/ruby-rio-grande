require_relative 'Item.rb'
class Cd < Item
  attr_reader :tracks, :run_time, :quantity
  attr_accessor :name, :price, :artist

  def initialize name, price, tracks, artist, run_time
    super(name,price)
    @tracks = tracks
    @artist = artist
    @run_time = run_time
    @quantity = 0
    @description = ""
  end

  def sell amount
    if @quantity >= amount
      @quantity -= amount
      true
    else
      false
    end
  end

  def stock amount
    @quantity += amount
    true
  end
end