require_relative 'spec_helper'
require_relative '../lib/Item'
require_relative '../lib/Book'

describe Book do

  before(:context) do
     @book = Book.new("Into the Wild",11.21, 240,"Jon Krakauer")
  end

  describe "Initialization" do
    it "Book to be inherited from Item" do
      expect(Book).to be < Item 
    end
     it "is assigned a title" do
      expect(@book.name).to eq("Into the Wild")
    end
    it "is assigned a price" do
      expect(@book.price).to eq(11.21)
    end
    it "is assigned a number of pages" do
      expect(@book.pages).to eq(240)
    end
    it "is assigned an author" do
      expect(@book.author).to eq("Jon Krakauer")
    end
  end

  describe "Accessors" do
    it "should be able to get and set pages" do
      @book.pages=240
      expect(@book.pages).to eq(240)
    end
    it "should be able to get and set author" do
      @book.author="Jon Krakauer"
      expect(@book.author).to eq("Jon Krakauer")
    end
  end
end



