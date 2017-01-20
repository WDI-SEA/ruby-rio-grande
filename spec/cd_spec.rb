require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new('Run The Jewels 2', 13.00, 12, 'Run The Jewels', 52)
  end


  # check initialization

  describe 'Initialization' do
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end

  # check that it is an extended from Item

    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end
  # check that it is an instance of Cd

    it 'is assigned a name' do
      expect(@cd.name).to eq('Run The Jewels 2')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(13.00)
    end

    it 'is assigned a number of tracks' do
      expect(@cd.tracks).to eq(12)
    end

    it 'is assigned an artist' do
      expect(@cd.artist).to eq('Run The Jewels')
    end

    it 'is assigned a run time' do
      expect(@cd.run_time).to eq(52)
    end
  end

    # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'The Warm Up'
      expect(@cd.name).to eq('The Warm Up')
    end

    it 'assigns and reads the price' do
      @cd.price = 5.00
      expect(@cd.price).to eq(5.00)
    end

    it 'assigns and reads the tracks' do
      @cd.tracks = 13
      expect(@cd.tracks).to eq(13)
    end

    it 'assigns and reads the artist' do
      @cd.artist = 'J.Cole'
      expect(@cd.artist).to eq('J.Cole')
    end

    it 'assigns and reads the run time' do
      @cd.run_time = 60
      expect(@cd.run_time).to eq(60)
    end

  end

  describe 'Methods' do
    it 'should be able to stock' do
      result = @cd.stock 5
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(5)
    end
    it 'should not be able to sell more cds than we have' do
      result = @cd.sell 6
      expect(result).to eq(false)
      expect(@cd.quantity).to eq(5)
    end
    it 'should be able to sell cds and update quantity' do
      result = @cd.sell 3
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(2)
    end
  end
end
