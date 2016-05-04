require_relative 'spec_helper'
require_relative '../lib/Item'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    @book = Book.new "Book Title", 12.99, 64, 33, "Author Name"
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
    
  end

  #check getters and setters
  describe "Accessors" do
    it "should be able to get and set name" do
      @book.name = "New Title"
      expect(@book.name).to eq("New Title")
    end
    it "should be able to get and set price" do
      @book.price = 10.00
      expect(@book.price).to eq(10.00)
    end
    it "should be able to get and set pages" do
      @book.pages = 34
      expect(@book.pages).to eq(34)
    end
    it "should be able to get and set author" do
      @book.author = "New Author"
      expect(@book.author).to eq("New Author")
    end
  end

  describe "Methods" do
    it "should be able to stock" do
      result = @book.stock 5
      expect(result).to eq(true)
      expect(@book.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @book.sell 6
      expect(result).to eq(false)
      expect(@book.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @book.sell 3
      expect(result).to eq(true)
      expect(@book.quantity).to eq(2)
    end
  end

end
