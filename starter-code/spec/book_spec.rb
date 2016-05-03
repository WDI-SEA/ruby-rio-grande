require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    @book = Book.new "Book Title", 12.99, 33, "Author Name"
  end

  #check initialization
  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@book).to be_instance_of(Book)
    end
    it "is assigned a name" do
      expect(@book.name).to eq("Book Title")
    end
    it "is assigned a price" do
      expect(@book.price).to eq(12.99)
    end
  end

  #check that it is an extended from Item
  #check that it is an instance of Book
  #check getters and setters

end
