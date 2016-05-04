# You are on your own... good luck.
require_relative 'DigitalItem.rb'

class EBook < DigitalItem

  def initialize name, price, filesize, pages, author
    super(name,price,filesize)
  end
end
