require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @bluray = Bluray.new('Harry Potter', 15.00, 120, 'Joe Marzullo', 'Dan Rasmussen' )
  end

  # check initialization
  describe 'Initialization' do
    it 'should be a bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end

    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@bluray.name).to eq('Harry Potter')
    end

    it 'is assigned a price' do
      expect(@bluray.price).to eq(15.00)
    end

    it 'is assigned a run time' do
      expect(@bluray.runTime).to eq(120)
    end

    it 'is assigned director' do
      expect(@bluray.director).to eq('Joe Marzullo')
    end

    it 'is assigned an producer' do
      expect(@bluray.producer).to eq('Dan Rasmussen')
    end
  end
  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Bluray
  # check getters and setters
end
