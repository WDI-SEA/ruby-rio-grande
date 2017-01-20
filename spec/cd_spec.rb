require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new('Mariah Carey Favs', 20, 10, 'Mariah Carey', 20)
  end
  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Cd
  # check getters and setters
  describe 'Initialization' do
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end

    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'should be assigned a name' do
      expect(@cd.name).to eq('Mariah Carey Favs')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(20)
    end

    it 'is assigned tracks' do
      expect(@cd.tracks).to eq(10)
    end

    it 'is assigned an author' do
      expect(@cd.artist).to eq('Mariah Carey')
    end

    it 'is assigned an run time' do
      expect(@cd.run_time).to eq(20)
    end
  end

  describe 'getters and setters' do
    it 'should read and write name' do
      @cd.name = 'Mariah Carey the Rebirth'
      expect(@cd.name).to eq('Mariah Carey the Rebirth')
    end

    it 'should read and write price' do
      @cd.price = 600
      expect(@cd.price).to eq(600)
    end

    it 'should read and write tracks' do
      @cd.tracks = 99
      expect(@cd.tracks).to eq(99)
    end

    it 'should read and write artist' do
      @cd.tracks = 'Henry Rollins'
      expect(@cd.tracks).to eq('Henry Rollins')
    end

    it 'should read and write run_time' do
      @cd.tracks = 99
      expect(@cd.tracks).to eq(99)
    end
  end

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


