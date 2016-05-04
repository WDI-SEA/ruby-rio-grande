require_relative 'Digitalitem.rb'

class Movie < Digitalitem

  attr_accessor :run_time, :director, :producer

  def initialize run_time, director, producer
    super(name,price)
    @run_time = run_time
    @director = director
    @producer = producer
  end

end
