require_relative 'spec_helper'
require_relative '../src/bluray'

describe Bluray do
  before(:context) do
    # initialize item
        @bluray = Bluray.new('King Kong', 15.00, 120, 'Movie about a monkey and the woman he loves.')
  end

  # check initialization
    describe 'Initialization' do
    	  # check that it is an instance of Bluray
    it 'should be a Bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end
  # check that it is an extended from Item

    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@bluray.name).to eq('King Kong')
    end

    it 'is assigned a price' do
      expect(@bluray.price).to eq(15.00)
    end
    it 'is assigned a length' do
      expect(@bluray.length).to eq(120)
    end

    it 'is assigned an description' do
      expect(@bluray.description).to eq('Movie about a monkey and the woman he loves.')
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @bluray.name = 'Awesome Movie'
      expect(@bluray.name).to eq('Awesome Movie')
    end

    it 'assigns and reads the price' do
      @bluray.price = 20.00
      expect(@bluray.price).to eq(20.00)
    end

    it 'assigns and reads the length' do
      @bluray.length = 80
      expect(@bluray.length).to eq(80)
    end

    it 'assigns and reads the description' do
      @bluray.description = 'Awesome Movie is awesome.'
      expect(@bluray.description).to eq('Awesome Movie is awesome.')
    end
  end
end
