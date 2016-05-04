require_relative 'DigitalItem'
class Song < DigitalItem
  attr_accessor :name, :price, :run_time, :artist

  def initialize name, price, run_time, artist
    super(name,price)
    @run_time = run_time
    @artist = artist
  end
end