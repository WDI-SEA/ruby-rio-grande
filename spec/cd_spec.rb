require 'spec_helper'
require './lib/cd'

describe 'Cd' do
  before(:context) do
    # initialize item
    @cd1 = Cd.new("Enya's Greatest Hits", 20.99, 13, 'Enya', 73)
  end

  # check initialization
  describe 'Initialization' do
    # check that it is an instance of Cd
    it 'should be a cd' do
      expect(@cd1).to be_instance_of(Cd)
    end

    # check that it is an extended from Item
    it 'should be an extension of Item' do
      expect(@cd1).to be_kind_of(Item)
    end
  end

  # check getters and setters
  describe 'Accessors' do
    # check inheriting 'name' ("Enya's Greatest Hits") through super() from Item
    it "should set name to Enya's Greatest Hits" do
      expect(@cd1.name).to eq("Enya's Greatest Hits")
    end

    # check inheriting 'price' (20.99) through super() from Item
    it 'should set price to 20.99' do
      expect(@cd1.price).to eq(20.99)
    end

    # check setting 'tracks' to 13
    it 'should set number of tracks at 13' do
      expect(@cd1.tracks).to eq(13)
    end

    # check setting 'artist' to Enya
    it 'should set artist to Enya' do
      expect(@cd1.artist).to eq('Enya')
    end

    # check setting 'run_time' to 73
    it 'should set run_time to 73' do
      expect(@cd1.run_time).to eq(73)
    end
  end

  # checking Methods - stock
  describe 'Methods - Stock' do
    before(:example) do
      # run 'stock' function, stocking 100 cds
      @cd1.stock(100)
    end

    # checking 'stock' method inherited from Item
    it 'should stock 100 cds' do
      expect(@cd1.get_stock).to eq(100)
    end
  end

  # checking Methods - sell
  describe 'Methods - Sell' do
    before(:example) do
      # run 'sell' function, selling 20 cds
      @cd1.sell(20)
    end

    # checking 'sell' method inherited from Item
    it 'should sell 20 cds' do
      expect(@cd1.get_stock).to eq(80)
    end
  end
end
