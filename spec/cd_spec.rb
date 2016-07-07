require_relative 'spec_helper'
require './lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new('Alopecia', 19.99, 14, 'why?', '45:06')
  end

  # check initialization
  describe 'initialization' do
    # check that it is an instance of Cd
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end
  # check that it is an extended from Item
    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end
    it 'is assigned a name' do
      expect(@cd.name).to eq('Alopecia')
    end
    it 'is assigned a price' do
      expect(@cd.price).to eq(19.99)
    end
    it 'is assigned a number of tracks' do
      expect(@cd.tracks).to eq(14)
    end
    it 'is assigned an artist' do
      expect(@cd.artist).to eq('why?')
    end
    it 'is assigned a run time' do
      expect(@cd.run_time).to eq('45:06')
    end
  end
  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Alopecia'
      expect(@cd.name).to eq('Alopecia')
    end

    it 'assigns and reads the price' do
      @cd.price = 19.99
      expect(@cd.price).to eq(19.99)
    end

    it 'assigns and reads the tracks' do
      @cd.tracks = 14
      expect(@cd.tracks).to eq(14)
    end

    it 'assigns and reads the artist' do
      @cd.artist = 'why?'
      expect(@cd.artist).to eq('why?')
    end

    it 'assigns and reads the run_time' do
      @cd.run_time = '45:06'
      expect(@cd.run_time).to eq('45:06')
    end
  end

  describe "Methods" do
    it "should be able to stock" do
      result = @cd.stock 5
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @cd.sell 6
      expect(result).to eq(false)
      expect(@cd.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @cd.sell 3
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(2)
    end
  end
end
