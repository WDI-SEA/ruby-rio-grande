# You are on your own... good luck.
require_relative 'DigitalItem.rb'

class Song < DigitalItem
	attr_accessor :runtime
	attr_accessor :artist

  def initialize name, price, filesize, runtime, artist
    super(name,price,filesize)
    @runtime = runtime
    @artist = artist
  end
end