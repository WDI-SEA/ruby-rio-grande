require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new("Alive 1997", 15.00, 1, "Daft Punk", 47.23)
  end

  # check initialization
  describe 'Initialization' do
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end

    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned an artist' do
      expect(@cd.artist).to eq("Daft Punk")
    end

    it 'is assigned tracks' do
      expect(@cd.tracks).to eq(1)
    end

    it 'is assigned a runtime' do
      expect(@cd.run_time).to eq(47.23)
    end


  end
  # check that it is an extended from Item
  # check that it is an instance of Cd
  # check getters and setters

  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Homework'
      expect(@cd.name).to eq('Homework')
    end

    it 'assigns and reads the price' do
      @cd.price = 20.00
      expect(@cd.price).to eq(20.00)
    end

    it 'assigns and reads the tracks' do
      @cd.tracks = 12
      expect(@cd.tracks).to eq(12)
    end

    it 'assigns and reads the artist' do
      @cd.artist = 'John Milton'
      expect(@cd.artist).to eq('John Milton')
    end

    it 'assigns and reads the runtime' do
      @cd.run_time = 33.50
      expect(@cd.run_time).to eq(33.50)
    end

  end

end
