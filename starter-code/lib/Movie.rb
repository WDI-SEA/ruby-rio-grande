# You are on your own... good luck.
require_relative 'DigitalItem.rb'

class Movie < DigitalItem
	attr_accessor :runtime
	attr_accessor :director
	attr_accessor :producer

  def initialize name, price, filesize, runtime, director, producer
    super(name,price,filesize)
    @runtime = runtime
    @director = director
    @producer = producer
  end
end