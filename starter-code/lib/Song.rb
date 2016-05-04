require_relative 'DigitalItem.rb'
class Song < DigitalItem
  attr_reader :run_time
  attr_accessor :name, :price, :artist

  def initialize name, price, artist, run_time
    super(name,price)
    @artist = artist
    @run_time = run_time
  end
end