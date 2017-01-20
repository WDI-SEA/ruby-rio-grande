require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @Bluray1 = Bluray.new(120, 'Spielburg', 'Lucas')
  end

  # check initialization
  # check that it is an extended from Item
  describe 'Initialization' do
    it 'is an instance of the Item class' do
      expect(@Bluray1).to be_kind_of(Item)
    end
  end


  # check that it is an instance of Bluray
  describe 'Initialization' do
    it 'is an instance of the Bluray class' do
      expect(@Bluray1).to be_instance_of(Bluray)
    end
  end

  # check getters and setters

  describe 'Accessors' do
    it 'should have a director' do
      expect(@Bluray1.director).to eq('Spielburg')
    end
    it 'should have a producer' do
      expect(@Bluray1.producer).to eq('Lucas')
    end
    it 'should have a run time' do
      expect(@Bluray1.run_time).to eq(120)
    end

  end



end
