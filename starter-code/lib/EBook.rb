# You are on your own... good luck.
require_relative 'DigitalItem.rb'

class EBook < DigitalItem
	attr_accessor :pages
	attr_accessor :author

  def initialize name, price, filesize, pages, author
    super(name,price,filesize)
    @pages = pages
    @author = author
  end
end
