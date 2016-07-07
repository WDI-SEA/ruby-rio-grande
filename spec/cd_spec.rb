require_relative 'spec_helper'
require './lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new('Ship', 10, 12, 'Modest Mouse', 60)
  end

  # check initialization
  describe 'Initialization' do
    it 'Should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end
    it 'Should be an instance of item' do
      expect(@cd).to be_kind_of(Item)
    end
    it 'Should be assigned a name' do
      expect(@cd.name).to eq 'Ship'
    end
    it 'Should be assigned a price' do
      expect(@cd.price).to eq 10
    end
    it 'Should be assigned a number of tracks' do
      expect(@cd.tracks).to eq 12
    end
    it 'Should be assigned an artist' do
      expect(@cd.artist).to eq 'Modest Mouse'
    end
    it 'Should be assigned a length' do
      expect(@cd.run_time).to eq 60
    end
  end

  # check that it is an extended from Item
  # check that it is an instance of Cd

  # check getters and setters
  describe 'Getters and Setters' do
    it 'Assigns and Reads a Name' do
      @cd.name = 'Whale'
      expect(@cd.name).to eq 'Whale'
    end
    it 'Assigns and Reads the price' do
      @cd.price = 20
      expect(@cd.price).to eq 20
    end
    it 'Assigns and Reads the number of tracks' do
      @cd.tracks = 48
      expect(@cd.tracks).to eq 48
    end
    it 'Assigns and Reads the artist' do
      @cd.artist = 'The Pirates'
      expect(@cd.artist).to eq 'The Pirates'
    end
    it 'Assigns and Reads the run-time' do
      @cd.run_time = 148
      expect(@cd.run_time).to eq 148
    end
  end

  describe 'Methods' do
    it 'Should be able to add stock' do
      result = @cd.stock 14
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(14)
    end
    it 'Should not be able to sell more items than in stock' do
      result = @cd.sell 15
      expect(result).to eq(false)
      expect(@cd.quantity).to eq(14)
    end
    it 'Should be able to sell items and update quantity' do
      result = @cd.sell 13
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(1)
    end
  end
end
