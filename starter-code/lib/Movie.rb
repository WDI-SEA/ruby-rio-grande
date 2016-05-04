require_relative './Item.rb'
require_relative './DigitalItem.rb'
class Movie < Digital_item
  attr_accessor :runtime, :director, :producer

  def initialize name, price, runtime, director, producer
    super(name, price)
    @runtime = runtime
    @director = director
    @producer = producer
  end

end