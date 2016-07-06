require_relative 'item.rb'

class Cd < Item
  attr_accessor :name, :tracks, :price, :run_time


  def initialize(name, tracks, price, run_time)
    @name = name
    @tracks = tracks
    @price = price
    @run_time = run_time
  end
end
