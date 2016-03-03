require_relative 'spec_helper'
require_relative '../lib/EBook'

describe Ebook do
  
  before(:context) do
    @ebook = Ebook.new('The Killing Joke', 21.00, 51, 'Alan Moore')
  end

  describe 'initialization' do
    it 'should be a book' do
      expect(@ebook).to be_instance_of(Ebook)
    end
    it 'should be a digital item' do
      expect(@ebook).to be_kind_of(Digital)
    end
    it 'should be an item' do
      expect(@ebook).to be_kind_of(Item)
    end
    it 'should have the properties it was assigned' do
      expect(@ebook.name).to eq('The Killing Joke')
      expect(@ebook.price).to eq(21.00)
      expect(@ebook.pages).to eq(51)
      expect(@ebook.author).to eq('Alan Moore')
    end
  end

  describe 'accessors' do
    it 'assigns and reads the name' do
      @ebook.name = 'The Disaster Artist'
      expect(@ebook.name).to eq('The Disaster Artist')
    end
    it 'price is read and changed' do
      @ebook.price = 22.00
      expect(@ebook.price).to eq(22.00)
    end
    it 'author can be read and changed' do
      @ebook.author = 'Greg Sestero'
      expect(@ebook.author).to eq('Greg Sestero')
    end
  end

  describe 'method' do
    it 'should have no weight by default' do
      expect(@ebook.weight).to eq(-1)
    end
    it 'should have no shipping cost' do
      expect(@ebook.shipping_price).to eq(false)
    end
  end

end