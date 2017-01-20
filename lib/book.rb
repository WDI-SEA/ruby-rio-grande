require_relative 'item.rb'

class Book < Item
  def initialize(pages, author)
    super('name', 'price')
    @pages = pages
    @author = author
  end
end
