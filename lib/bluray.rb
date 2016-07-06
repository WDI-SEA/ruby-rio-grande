require_relative 'item.rb'

class Bluray < Item
    attr_accessor :name, :price, :runTime, :director, :producer

  def initialize(name, price, runTime, director, producer)
    @name = name
    @price = price
    @runTime = runTime
    @director = director
    @producer = producer
  end
end
