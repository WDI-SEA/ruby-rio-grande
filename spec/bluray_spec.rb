require 'spec_helper'
require './lib/bluray'

describe 'Bluray' do
  before(:context) do
    # initialize item
    @blu1 = Bluray.new("Jackie Chan's Greatest Hits", 39.99, 123, 'Ho Lee Smokes', 'Bill Gates')
  end

  # check initialization
  describe 'Initialization' do
    # check that it is an instance of Bluray
    it 'should be an instance of Bluray' do
      expect(@blu1).to be_instance_of(Bluray)
    end

    # check that it is an extended from Item
    it 'should be a kind of Item' do
      expect(@blu1).to be_kind_of(Item)
    end
  end

  # check getters and setters
  describe 'Accessors' do
    # check setting 'name' inherited through super()
    it "should set name to 'Jackie Chan's Greatest Hits'" do
      expect(@blu1.name).to eq("Jackie Chan's Greatest Hits")
    end

    # check setting 'price' inherited through super()
    it 'should set price to 39.99' do
      expect(@blu1.price).to eq(39.99)
    end

    # check setting 'run_time' to 123
    it "should set 'run_time' to 123" do
      expect(@blu1.run_time).to eq(123)
    end

    # check setting 'director' to 'Ho Lee Smokes'
    it "should set 'director' to 'Ho Lee Smokes'" do
      expect(@blu1.director).to eq('Ho Lee Smokes')
    end

    # check NOT setting 'director' to something else
    it "should NOT set 'director' to something else" do
      # trying to set 'director' to 'Ang Lee'
      @blu1.director = 'Ang Lee' if respond_to? :director=
      expect(@blu1.director).to eq('Ho Lee Smokes')
    end

    # check setting 'producer' to 'Bill Gates'
    it "should set 'producer' to 'Bill Gates'" do
      expect(@blu1.producer).to eq('Bill Gates')
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
