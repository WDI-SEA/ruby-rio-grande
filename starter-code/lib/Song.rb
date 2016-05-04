require_relative "DigitalItem.rb"

class Song < Digital
  attr_accessor :runtime, :artist

  def initialize name, price, runtime, artist
    super(name, price)
    @runtime = runtime
    @artist = artist
  end
end
