require_relative 'spec_helper'
require './lib/book'

describe Book do
  before(:context) do
    # initialize item
    @book = Book.new('Harry Potter', 15.00, 700, 'JK Rowling')
  end

  # check initialization
  describe 'Initialization' do
    it 'should be a book' do
      expect(@book).to be_instance_of(Book)
    end

    it 'should be an item' do
      expect(@book).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@book.name).to eq('Harry Potter')
    end

    it 'is assigned a price' do
      expect(@book.price).to eq(15.00)
    end

    it 'is assigned pages' do
      expect(@book.pages).to eq(700)
    end

    it 'is assigned an author' do
      expect(@book.author).to eq('JK Rowling')
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @book.name = 'Paradise Lost'
      expect(@book.name).to eq('Paradise Lost')
    end

    it 'assigns and reads the price' do
      @book.price = 20.00
      expect(@book.price).to eq(20.00)
    end

    it 'assigns and reads the pages' do
      @book.pages = 0
      expect(@book.pages).to eq(0)
    end

    it 'assigns and reads the author' do
      @book.author = 'John Milton'
      expect(@book.author).to eq 'John Milton'
    end
  end

  # check methods
  describe "Methods" do
    it "should be able to stock" do
      result = @book.stock(5)
      expect(result).to eq(true)
      expect(@book.quantity).to eq(5)
    end
    it "should be able to sell" do
      result = @book.sell(2)
      expect(result).to eq(true)
      expect(@book.quantity).to eq(3)
    end

    it "should not sell if no quantity" do
      result = @book.sell(5)
      expect(result).to eq(false)
      expect(@book.quantity).to eq(3)
    end
  end
end
