require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initialize item
    @cd = Cd.new('Bye Bye Bye', 5, 10, 'NSYNC', 150)
  end

  #check initialization
  describe 'initialization' do

    #check that it is an instance of Cd
    it 'it should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end

    #check that it is an extended from Item
    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    #check name
    it 'is assigned a name' do
      expect(@cd.name).to eq('Bye Bye Bye')
    end

    #check price
    it 'is assigned a price' do
      expect(@cd.price).to eq(5)
    end

    #check tracks
    it 'should have tracks' do
      expect(@cd.tracks).to eq(10)
    end

    #check artist
    it 'should have an artist' do
      expect(@cd.artist).to eq('NSYNC')
    end

    #check run_time
    it 'should have a run time' do
      expect(@cd.run_time).to eq(150)
    end
  end

  #check getters and setters
  describe 'getters and setters' do

    it 'assigns and reads the name' do
      @cd.name = 'Hey'
      expect(@cd.name).to eq('Hey')
    end

    it 'assigns and reads the price' do
      @cd.price = 2
      expect(@cd.price).to eq(2)
    end

    it 'assigns and reads the tracks' do
      @cd.tracks = 90
      expect(@cd.tracks).to eq(90)
    end

    it 'assigns and reads the artist' do
      @cd.artist = 'Girafarig'
      expect(@cd.artist).to eq('Girafarig')
    end

    it 'assigns and reads the run time' do
      @cd.run_time = 200
      expect(@cd.run_time).to eq(200)
    end
  end
end
