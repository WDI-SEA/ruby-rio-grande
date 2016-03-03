require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    #initialize item
    @ebook = EBook.new("Harry Potter", 15.00, 700, "JK Rowling")
  end

  #check initialization
  describe 'Initialization of ebook complete' do
    it 'should be a ebook' do
      expect(@ebook).to be_instance_of(EBook)
    end
    it "should be an item" do
      expect(@ebook).to be_kind_of(Item)
    end
    it "should be a digital item" do
      expect(@ebook).to be_kind_of(DigitalItem)
    end
    it "is assigned a name" do
      expect(@ebook.name).to eq("Harry Potter")
    end
    it "is assigned a price" do
      expect(@ebook.price).to eq(15.00)
    end
    it "is assigned some pages" do
      expect(@ebook.pages).to eq(700)
    end
    it "is assigned an author" do
      expect(@ebook.author).to eq("JK Rowling")
    end
  end
  #check getters and setters
  describe 'Checking getters and setters' do
    it 'assigns and reads the name' do
      @ebook.name = 'Paradise Lost'
      expect(@ebook.name).to eq('Paradise Lost')
    end
    it 'assigns and reads the price' do
      @ebook.price = 20.00
      expect(@ebook.price).to eq(20.00)
    end
    it 'assigns and reads the pages' do
      @ebook.pages = 500
      expect(@ebook.pages).to eq(500)
    end
    it 'assigns and reads the author' do
      @ebook.author = "John Doe"
      expect(@ebook.author).to eq("John Doe")
    end
  end
end