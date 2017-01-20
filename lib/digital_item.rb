# You are on your own... good luck.
require_relative 'item.rb'

class Digital_item < Item
  attr_accessor :name, :price, :artist, :run_time
  attr_reader :quantity

  def initialize(name, price, artist, run_time)
    super(name, price)
    @artist = artist
    @run_time = run_time
    @quantity = 1
  end
end
