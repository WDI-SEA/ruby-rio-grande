require_relative './Item.rb'
require_relative './DigitalItem.rb'
class Song < Digital_item
  attr_accessor :length, :author, :runtime, :artist

  def initialize name, price, runtime, artist
    super(name, price)
    @runtime = runtime
    @artist = artist
    
  end

end