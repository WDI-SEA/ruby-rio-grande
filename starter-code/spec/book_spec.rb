require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    #initialize item
    @book1 = Book.new "Book", 100, 35, "Pushkin" 

  end

  #check initialization
    describe 'Initialization' do
    it "is an instance of the Item class" do
      expect(@book1).to be_a(Item)
    end
  end
  #check that it is an extended from Item
    describe 'Extension' do
      it "is extended from Item" do
        expect(@book1).to be_an(Item)
      end
    end
  #check that it is an instance of Book
      describe 'Instance' do
    it "is an instance of the Book class" do
      expect(@book1).to be_instance_of(Book)
    end
  end
  #check getters and setters
  describe 'Accessors' do
    it "should be able to set/get pages" do
      @book1.pages=75
      expect(@book1.pages).to eq(75)
    end
    it "should be able to set/get name" do
      @book1.name="New Name"
      expect(@book1.name).to eq("New Name")
    end
    it "should be able to set/get price" do
      @book1.price = 200
      expect(@book1.price).to eq(200)
    end
    it "should be able to set/get author" do
      @book1.author = "Anderson"
      expect(@book1.author).to eq("Anderson")  
    end 
    end 
end
