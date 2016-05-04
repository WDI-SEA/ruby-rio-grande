require_relative 'spec_helper'
require_relative '../lib/Item'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    @book = Book.new "Book Title", 12.99, 33, "Author Name"
  end

  #check initialization
  describe "Initialization" do
    #check that it is an instance of Book
    it "is an instance of the Book class" do
      expect(@book).to be_instance_of(Book)
    end
    #check that it is an extended from Item
    it "extends from the Item class" do
      expect(Book).to be < Item
    end
    #check getters and setters
    it "is assigned a name" do
      expect(@book.name).to eq("Book Title")
    end
    it "is assigned a price" do
      expect(@book.price).to eq(12.99)
    end
    it "is assigned pages" do
      expect(@book.pages).to eq(33)
    end
    it "is assigned an author" do
      expect(@book.author).to eq("Author Name")
    end
  end

end
