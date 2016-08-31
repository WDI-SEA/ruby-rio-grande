require_relative 'spec_helper'
require_relative '../src/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new('Speakerboxxx/The Love Below', 15.00, 15, 'Outkast', '135:00')
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
      expect(@cd.name).to eq('Speakerboxxx/The Love Below')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(15.00)
    end

    it 'is assigned tracks' do
      expect(@cd.tracks).to eq(15)
    end

    it 'is assigned an artist' do
      expect(@cd.artist).to eq('Outkast')
    end
    it 'is assigned an runtime' do
      expect(@cd.runtime).to eq('135:00')
    end
  end
  # check getters and setters
    describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Paradise Lost'
      expect(@cd.name).to eq('Paradise Lost')
    end

    it 'assigns and reads the price' do
      @cd.price = 20.00
      expect(@cd.price).to eq(20.00)
    end

    it 'assigns and reads the quantity of tracks' do
      @cd.tracks = 0
      expect(@cd.tracks).to eq(0)
    end

    it 'assigns and reads the artist' do
      @cd.artist = 'John Milton'
      expect(@cd.artist).to eq('John Milton')
    end

    it 'assigns and reads the runtime' do
      @cd.runtime = '11:11'
      expect(@cd.runtime).to eq('11:11')
    end
  end

  #methods
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
