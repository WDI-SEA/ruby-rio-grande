# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../src/digital_item'

describe Ebook do
  before(:context) do
    # initialize item
    @ebook = Ebook.new('Harry Potter', 15.00, 'JK Rowling')
  end

  # check initialization
  describe 'Initialization' do
    it 'should be an ebook' do
      expect(@ebook).to be_instance_of(Ebook)
    end

    it 'should be an item' do
      expect(@ebook).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@ebook.name).to eq('Harry Potter')
    end

    it 'is assigned a price' do
      expect(@ebook.price).to eq(15.00)
    end

    it 'is assigned an author' do
      expect(@ebook.author).to eq('JK Rowling')
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @ebook.name = 'Paradise Lost'
      expect(@ebook.name).to eq('Paradise Lost')
    end

    it 'assigns and reads the price' do
      @ebook.price = 20.00
      expect(@ebook.price).to eq(20.00)
    end

    it 'assigns and reads the author' do
      @ebook.author = 'John Milton'
      expect(@ebook.author).to eq('John Milton')
    end
  end

#methods
  describe 'Methods' do
    it 'should be able to sell items and NOT update quantity' do
      result = @ebook.sell 3
      expect(result).to eq(true)
      expect(@ebook.quantity).to eq(1)
    end
  end
end
