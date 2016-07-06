require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    @cd = Cd.new('Atmosphere', 20, 10, 60)
  end

  # check initialization
  describe 'Initialization' do
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end

    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('Atmosphere')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(20)
    end

    it 'is assigned tracks' do
      expect(@cd.tracks).to eq(10)
    end

    it 'is assigned an runTime' do
      expect(@cd.runTime).to eq(60)
    end
  end
  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Cd
  # check getters and setters
end
