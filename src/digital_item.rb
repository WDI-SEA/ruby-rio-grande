# You are on your own... good luck.
require_relative 'item.rb'

class Ebook < Item
  attr_accessor :author
  def initialize(name, price, author)
    super(name, price)
    @author = author
  end
    def sell(amount)
      @quantity = 1
      true
    end
  end
