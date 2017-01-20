require_relative 'spec_helper'
require_relative '../src/cd'

describe Cd do
  before(:context) do
    # initialize item
        @cd = Cd.new('Hip Hop', 15.00, 60, 'The album of music')
  end

  # check initialization
    describe 'Initialization' do
    	  # check that it is an instance of Cd
    it 'should be a Cd' do
      expect(@cd).to be_instance_of(Cd)
    end
  # check that it is an extended from Item

    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('Hip Hop')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(15.00)
    end
    it 'is assigned a length' do
      expect(@cd.length).to eq(60)
    end

    it 'is assigned an description' do
      expect(@cd.description).to eq('The album of music')
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Music Music Music'
      expect(@cd.name).to eq('Music Music Music')
    end

    it 'assigns and reads the price' do
      @cd.price = 20.00
      expect(@cd.price).to eq(20.00)
    end

    it 'assigns and reads the length' do
      @cd.length = 80
      expect(@cd.length).to eq(80)
    end

    it 'assigns and reads the description' do
      @cd.description = 'This is music'
      expect(@cd.description).to eq('This is music')
    end
  end
end
