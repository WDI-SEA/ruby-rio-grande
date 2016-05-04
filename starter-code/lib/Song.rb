require_relative 'DigitalItem.rb'

class Song < Digital_item

  attr_accessor :name, :price, :artist, :run_time

  def initialize name, price, artist, run_time
    super(name,price)
    @artist = artist
    @run_time = run_time
  end
  
end