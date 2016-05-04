require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    @book = Book.new("Lolita", 14.99, 264, "Vladimir Nabokov")
  end

  describe "Initialization" do
  	it "is an instance of the Item class" do
  		expect(@book).to be_instance_of(Book)
  	end
    it "is assigned a name" do
      expect(@book.name).to eq("Lolita")
    end
    it "is assigned a price" do
      expect(@book.price).to eq(14.99)
    end
  end

  describe "Accessors" do
    it "should be able to get and set name" do
      @book.name="New Name"
      expect(@book.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @book.price=44.99
      expect(@book.price).to eq(44.99)
    end
    it "should be able to get and set pages" do
      expect(@book.pages).to eq(264)
      @book.pages=245
      expect(@book.pages).to eq(245)
    end
    it "should be able to get and set author" do
      expect(@book.author).to eq("Vladimir Nabokov")
      @book.author="Putin"
      expect(@book.author).to eq("Putin")
    end
  end
end
