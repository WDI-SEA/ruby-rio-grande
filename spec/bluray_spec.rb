require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    @bluray = Bluray.new('Harry Potter', 15.00, 700, 'JK Rowling', 'joe')
  end

  describe 'Initialization' do
    it 'should be a bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end

    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@bluray.name).to eq('Harry Potter')
    end

    it 'is assigned a price' do
      expect(@bluray.price).to eq(15.00)
    end

    it 'is assigned runTime' do
      expect(@bluray.runTime).to eq(700)
    end

    it 'is assigned an director' do
      expect(@bluray.director).to eq('JK Rowling')
    end

    it 'is assigned a producer' do
      expect(@bluray.producer).to eq('joe')
    end
end
describe 'getters and setters' do
    it 'assigns and reads the name' do
      @bluray.name = 'Paradise Lost'
      expect(@bluray.name).to eq('Paradise Lost')
    end

    it 'assigns and reads the price' do
      @bluray.price = 20.00
      expect(@bluray.price).to eq(20.00)
    end

    it 'assigns and reads the runTime' do
      @bluray.runTime = 60
      expect(@bluray.runTime).to eq(60)
    end

    it 'assigns and reads the director' do
      @bluray.director = 'John Milton'
      expect(@bluray.director).to eq('John Milton')
    end

    it 'assigns and reads the producer' do
      @bluray.producer = 'Sawyer'
      expect(@bluray.producer).to eq('Sawyer')
    end
  end

# checking Methods - Stock
  describe 'Methods - Stock' do
    # check running stock function, stocking 100 blurays
    before(:example) do
      @blu1.stock(100)
    end

    # checking 'stock' method inherited from Item
    it 'should stock 100 blurays' do
      expect(@blu1.get_stock).to eq(100)
    end
  end

  # checking Methods - Sell
  describe 'Methods - Sell' do
    # checking 'sell' method inherited from Item
    before(:example) do
      # selling 42 blurays
      @blu1.sell(42)
    end

    # checking to see if sell() worked properly
    it 'should sell 42 blurays, leaving stock of 58' do
      expect(@blu1.get_stock).to eq(58)
    end
  end

end

