require_relative 'spec_helper'
require './lib/cd'

describe Cd do
  before(:context) do
# initialize item
    @cd = Cd.new('Disorganized Fun', 19.99, 11, 'Ronald Jenkees', '45:00')
  end

# check initialization
  describe 'Initialization' do

# check that it is an instance of Cd
    it 'should be a CD' do
      expect(@cd).to be_instance_of(Cd)
    end

# check that it is an extended from Item
    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('Disorganized Fun')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(19.99)
    end

    it 'is assigned tracks' do
      expect(@cd.tracks).to eq(11)
    end

    it 'is assigned artist' do
      expect(@cd.artist).to eq('Ronald Jenkees')
    end

    it 'has a run time' do
      expect(@cd.run_time).to eq('45:00')
    end
  end

# check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Disorganized Fun'
      expect(@cd.name).to eq('Disorganized Fun')
    end

    it 'assigns and reads the price' do
      @cd.price = 19.99
      expect(@cd.price).to eq(19.99)
    end

    it 'assigns and reads the tracks' do
      @cd.tracks = 11
      expect(@cd.tracks).to eq(11)
    end

    it 'assigns and reads the artist' do
      @cd.artist = 'Ronald Jenkees'
      expect(@cd.artist).to eq('Ronald Jenkees')
    end

    it 'assigns and reads the run time' do
      @cd.run_time = '45:00'
      expect(@cd.run_time).to eq('45:00')
    end
  end

# check methods
    describe 'Methods' do
    it 'should be able to stock' do
      result = @cd.stock 5
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(5)
    end
    it 'should not be able to sell more items than we have' do
      result = @cd.sell 6
      expect(result).to eq(false)
      expect(@cd.quantity).to eq(5)
    end
    it 'should be able to sell items and update quantity' do
      result = @cd.sell 3
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(2)
    end
  end



end
