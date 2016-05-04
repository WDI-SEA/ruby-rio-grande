require_relative 'Item.rb'
class Bluray < Item

  attr_accessor :runtime, :director, :producer

    def initialize name, price, runtime, director, producer
    @director = director
    @producer = producer
    @runtime = runtime
    super(name,price)
  end

end

