require_relative 'DigitalItem.rb'
class Movie < DigitalItem

attr_reader :quantity
attr_accessor :runtime, :director, :producer

    def initialize runtime, director, producer
    @quantity = 1
    @runtime = runtime
    @director = director
    @producer = producer

    super(name,price)
  end


 end


 # * Movie < DigitalItem
 #  * Run time
 #  * Director
 #  * Producer