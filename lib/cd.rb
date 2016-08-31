require_relative 'item.rb'

class CD < Item
  attr_accessor :run_time, :tracks, :artist

  def initialize(run_time, tracks, artist)
    super(name, price)
    @run_time = run_time
    @tracks = tracks
    @artist = artist
  end
end
