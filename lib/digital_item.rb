# You are on your own... good luck.
require_relative 'item.rb'

class DigitalItem < Item
  def initialize
    super('name', 'price')
    @@quantity = 1
    
  end
end