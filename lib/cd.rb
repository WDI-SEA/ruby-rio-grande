require_relative 'item.rb'

class Cd < Item
  def initialize(tracks, artists, runtime)
  super('name', 'price')
  @tracks = tracks
  @artists = artists
  @runtime = runtime
end
