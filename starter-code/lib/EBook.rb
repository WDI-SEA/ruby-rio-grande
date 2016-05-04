require_relative 'Digitalitem.rb'

class EBook < Digitalitem

  attr_accessor :pages, :author

  def initialize pages, author
    super(name,price)
    @pages = pages
    @author = author
  end

end
