require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new('Atmosphere', 20, 10, 60)

  end

  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Cd
  # check getters and setters


  describe 'Initialization' do
    it 'is an instance of cd' do
      expect(@cd).to be_instance_of(Cd)
    end
    it 'is assigned a name' do
      expect(@cd.name).to eq('Atmosphere')
    end
    it 'is assigned a tracks' do
      expect(@cd.tracks).to eq(20)
  end
    it 'should be able to get tracks' do
      expect(@cd.price).to eq(10)
    end
    it 'should be able to get run time' do
      expect(@cd.run_time).to eq(60)
    end

    end

  end
