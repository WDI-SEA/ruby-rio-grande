require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @Cd = Cd.new('All Eyez On Me', 18, 27, '2pac', 120)
  end
 # check initialization
  describe 'Initialization' do
    it 'should be a cd' do
      expect(@Cd).to be_instance_of(Cd)
    end

    it 'should be an item' do
      expect(@Cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@Cd.name).to eq('All Eyez On Me')
    end

    it 'is assigned tracks' do
      expect(@Cd.tracks).to eq(27)
    end

    it 'is assigned artist' do
      expect(@Cd.artist).to eq('2pac')
    end

    it 'is assigned a run_time' do
      expect(@Cd.run_time).to eq(120)
    end
  end

  # check getters and setters
  describe 'Accessors' do
    it 'assigns and reads the name' do
      @Cd.name = 'Funeral'
      expect(@Cd.name).to eq('Funeral')
    end

    it 'assigns and reads the price' do
      @Cd.price = 19
      expect(@Cd.price).to eq(19)
    end

    it 'assigns and reads the tracks' do
      @Cd.tracks = 11
      expect(@Cd.tracks).to eq(11)
    end

    it 'assigns and reads the artist' do
      @Cd.artist = 'Arcade Fire'
      expect(@Cd.artist).to eq('Arcade Fire')
    end

    it 'assigns and reads the run_time' do
      @Cd.run_time = 60
      expect(@Cd.run_time).to eq(60)
    end
  end

  describe 'Methods' do
    it 'should be able to stock' do
      result = @Cd.stock 5
      expect(result).to eq(true)
      expect(@Cd.quantity).to eq(5)
    end
    it 'should not be able to sell more items than we have' do
      result = @Cd.sell 6
      expect(result).to eq(false)
      expect(@Cd.quantity).to eq(5)
    end
    it 'should be able to sell items and update quantity' do
      result = @Cd.sell 3
      expect(result).to eq(true)
      expect(@Cd.quantity).to eq(2)
    end
  end
  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Cd
  # check getters and setters
end
