require_relative 'DigitalItem.rb'
class Song < DigitalItem

attr_reader :quantity
attr_accessor :runtime, :artist

    def initialize runtime, artist
    @quantity = 1
    @runtime = runtime
    @artist = artist


    super(name,price)
  end

 end

  # * Run time
  # * Artist