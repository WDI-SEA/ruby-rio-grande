require_relative 'DigitalItem.rb'
class EBook < DigitalItem

attr_reader :quantity
attr_accessor :pages, :author

    def initialize pages, author
    @quantity = 1
    @pages = pages
    @author = author


    super(name,price)
  end


 end

  #  * Pages
  # * Author