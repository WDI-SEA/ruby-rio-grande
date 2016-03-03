require_relative 'Item.rb'
class Cd < Item
  attr_accessor :tracks, :artist, :run_time

  def initialize name, price, tracks, artist, run_time, weight=0
    super(name, price, weight)
    @tracks = tracks
    @artist = artist
    @run_time = run_time
  end
end