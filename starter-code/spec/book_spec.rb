require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    #initialize item
    @book = Book.new("Where the Wild Things Are", 5.00)
  end

  

  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Book
  #check getters and setters

end
