require_relative 'item.rb'

class Cd < Item
  attr_accessor :name, :price, :tracks, :runTime

  def initialize(name, price, tracks, runTime)
    @name = name
    @price = price
    @tracks = tracks
    @runTime = runTime
  end
end
