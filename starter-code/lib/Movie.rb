require_relative "DigitalItem.rb"

class Movie < Digital
  attr_accessor :runtime, :director, :producer

  def initialize name, price, runtime, director, producer
    super(name, price)
    @runtime = runtime
    @director = director
    @producer = producer
  end
end
