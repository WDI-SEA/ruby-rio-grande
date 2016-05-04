require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    @book = Book.new("Generic Item",1.99, 300, "Hemmingway")
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@book).to be_a(Item)
    end
     it "is extended from Item" do
      expect(@book).to be_an(Item)
    end
    it "is an instance of Book" do
      expect(@book).to be_instance_of(Book)
    end
  end

  describe "Accessors" do
    it "should be able to get and set Author" do
      @book.author="Joyce"
      expect(@book.author).to eq("Joyce")
    end
    it "should be able to get and set pages" do
      expect(@book.pages).to eq(300)
    end
    it "should be able to get quantity" do
      expect(@book.quantity).to eq(0)
    end
    it "should be able to get and set name" do
      @book.name="New Name"
      expect(@book.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @book.price=44.99
      expect(@book.price).to eq(44.99)
    end
    it "should be able to get and set description" do
      expect(@book.description).to eq("")
      @book.description="test"
      expect(@book.description).to eq("test")
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
