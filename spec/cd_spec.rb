require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new('OK Computer', 14.99, 11, 'Radiohead', 65)
  end

  # check initialization
  describe 'Initialization' do
    it 'is an instance of the Cd class' do
      expect(@cd).to be_instance_of(Cd)
    end
    # check that it is an extended from Item
    it 'is assigned a name' do
      expect(@cd.name).to eq('OK Computer')
    end
    it 'is assigned a price' do
      expect(@cd.price).to eq(14.99)
    end
    # check that it is an instance of Cd
    it 'is assigned a tracks'do
      expect(@cd.tracks).to eq(11)
    end
    it 'is assigned a artist' do
      expect(@cd.artist).to eq('Radiohead')
    end
    it 'is assigned a run time' do
      expect(@cd.runTime).to eq(65)
    end
  end
 
  # check getters and setters
  describe 'Accessors' do
    it 'should be able to get and set name' do
      @cd.name = 'Marquee Moon'
      expect(@cd.name).to eq('Marquee Moon')
    end
    it 'should be able to get and set price' do
      @cd.price = 6.99
      expect(@cd.price).to eq(6.99)
    end
    it 'should be able to get and set tracks' do
      @cd.tracks = 8
      expect(@cd.tracks).to eq(8)
    end
    it 'should be able to get and set artist' do
      @cd.artist = 'Television'
      expect(@cd.artist).to eq('Television')
    end
    it 'should be able to get and set run time' do
      @cd.runTime = 70
      expect(@cd.runTime).to eq(70)
    end
  end

  #Checking methods
  describe 'Methods' do
    it 'should be able to stock' do
      result = @cd.stock 15
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(15)
    end
    it 'should not be able to sell more items than we have' do
      result = @cd.sell 900
      expect(result).to eq(false)
      expect(@cd.quantity).to eq(15)
    end
    it 'should be able to sell items and update quantity' do
      result = @cd.sell 3
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(12)
    end
  end
end
