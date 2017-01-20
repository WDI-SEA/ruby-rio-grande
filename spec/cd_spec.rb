require_relative 'spec_helper'
require_relative '../lib/cd'

describe CD do
  before(:context) do
    # initialize item
    @CD1 = CD.new(120, 7, 'Beatles')
  end

  # check initialization
  # check that it is an extended from Item
  describe 'Initialization' do
    it 'is an instance of the Item class' do
      expect(@CD1).to be_kind_of(Item)
    end
  end


  # check that it is an instance of CD
  describe 'Initialization' do
    it 'is an instance of the CD class' do
      expect(@CD1).to be_instance_of(CD)
    end
  end

  # check getters and setters

  describe 'Accessors' do
    it 'should have minutes' do
      expect(@CD1.run_time).to eq(120)
    end
    it 'should have tracks' do
      expect(@CD1.tracks).to eq(7)
    end
    it 'should have a run time' do
      expect(@CD1.artist).to eq('Beatles')
    end

  end



end
