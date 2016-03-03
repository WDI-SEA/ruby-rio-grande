require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    #initialize item
    @ebook = EBook.new("Harry Potter", 15.00, 700, "JK Rowling")
  end

  #check initialization
  describe 'initialization ' do
    it 'should be a book' do
      expect(@ebook).to be_instance_of(EBook)
    end
    it 'should be an item' do
      expect(@ebook).to be_kind_of(Item)
    end
    it 'should be an item' do
      expect(@ebook).to be_kind_of(DigitalItem)
    end
    it "is assigned a name" do
      expect(@ebook.name).to eq("Harry Potter")
    end
    it "is assigned a price" do
      expect(@ebook.price).to eq(15.00)
    end
    it "is assigned pages " do  
      expect(@ebook.pages).to eq(700)
    end
    it "is assigned author" do
      expect(@ebook.author).to eq("JK Rowling")
    end
  end  
  #check getters and setters
  describe "getters and setters" do
    it 'assigns and reads name' do
      @ebook.name = "Paradise Lost"
      expect(@ebook.name).to eq('Paradise Lost')
    end
    it 'assigns and reads name' do
    @ebook.price = 12.00
    expect(@ebook.price).to eq(12.00)
    end
    it 'assigns and reads name' do
    @ebook.pages = 0
    expect(@ebook.pages).to eq(0)
    end
    it 'assigns and reads name' do
    @ebook.author = "John Milton"
    expect(@ebook.author).to eq('John Milton')
    end    
  end
end
# You are on your own... good luck.