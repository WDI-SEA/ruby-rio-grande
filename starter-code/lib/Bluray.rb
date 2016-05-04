require_relative 'Item.rb'
class Bluray < Item
  def initialize name, price, run_time, director, producer
    super(name, price)
    @run_time = run_time
    @director = director
    @producer = producer
  end

end