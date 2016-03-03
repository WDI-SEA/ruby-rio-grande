require_relative 'DigitalItem.rb'

class Song < DigitalItem
  attr_accessor :run_time, :artist

  def initialize(name, price, run_time, artist)
      super(name, price)
      @run_time = run_time
      @artist = artist
  end
end