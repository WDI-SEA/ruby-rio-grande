require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    #initialize item
    @book = Book.new("Harry Potter", 15.00, 700, "JK Rowling", 20)
  end

  describe 'initialization' do
    it 'should be a book' do
      expect(@book).to be_instance_of(Book)
    end
    it "is assigned a name" do
      expect(@book.name).to eq("Harry Potter")
    end
    it "is assigned a price" do
      expect(@book.price).to eq(15.00)
    end
    it "is assigned pages" do
      expect(@book.pages).to eq(700)
    end
    it "is assigned author" do
      expect(@book.author).to eq("JK Rowling")
    end
    it 'should be an item' do
      expect(@book).to be_kind_of(Item)
    end
  end

  describe 'accessors' do
    it 'assigns and reads the name' do
      @book.name = 'The Disaster Artist'
      expect(@book.name).to eq('The Disaster Artist')
    end
    it 'price is read and changed' do
      @book.price = 22.00
      expect(@book.price).to eq(22.00)
    end
    it 'author can be read and changed' do
      @book.author = 'Greg Sestero'
      expect(@book.author).to eq('Greg Sestero')
    end
  end

  describe 'method' do
    it 'testing shipping cost' do
      expect(@book.shipping_price).to eq(24)
    end
  end
end
