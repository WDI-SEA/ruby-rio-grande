require_relative 'item.rb'

class Bluray < Item

  attr_accessor :runTime, :director, :producer

  def initialize(name, price, runTime, director, producer)
    super(name, price)
    @runTime = runTime
    @director = director
    @producer = producer
  end
end
