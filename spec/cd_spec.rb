require_relative 'spec_helper'
require './lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new('Nevermind', 14.00, 12, 'Nirvana', 49.00)
  end

  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Cd
  # check getters and setters

# name, price, description, tracks, artist, run_time

  describe 'Initialization' do
    it 'It is a cd.' do
      expect(@cd).to be_instance_of(Cd)
    end

    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('Nevermind')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(14.00)
    end

    it 'has a certain number of tracks' do
      expect(@cd.tracks).to eq(12)
    end

    it 'has an artist' do
      expect(@cd.artist).to eq('Nirvana')
    end

    it 'has a runt time' do
      expect(@cd.run_time).to eq(49.00)
    end
  end

  #check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads a name' do
      @cd.name = 'California'
      expect(@cd.name).to eq('California')
    end

    it 'assigns and reads a price' do
      @cd.price = 16.00
      expect(@cd.price).to eq(16.00)
    end

    it 'assigns and reads a number of tracks' do
      @cd.tracks = 10
      expect(@cd.tracks).to eq(10)
    end

    it 'assigns and reads an artist' do
    @cd.artist = "Ludovico Einaudi"
    expect(@cd.artist).to eq('Ludovico Einaudi')
    end

    it 'assigns and read a run time amount' do
    @cd.run_time = 25.00
    expect(@cd.run_time).to eq(25.00)
    end
  end

  describe "Methods" do
    it "should be able to stock" do
      result = @cd.stock 5
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(5)
    end

    it 'should not be able to sell more cds than the quantity we have' do
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
