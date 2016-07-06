require_relative 'spec_helper'
require_relative '../lib/bluray.rb'

describe Bluray do
  before(:context) do
    # initialize item
    @bluray = Bluray.new('harry potter', 15.00, 120, 'Director', 'producer')
  end

  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Bluray
  # check getters and setters
  describe 'Initialization' do
    it 'is an instance of Bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end
    it 'is assigned a name' do
      expect(@bluray.name).to eq('harry potter')
    end
    it 'is assigned a price' do
      expect(@bluray.price).to eq(15.00)
    end
    it 'should be able to get runtime' do
      expect(@bluray.run_time).to eq(120)
    end
    it 'should be able to get director' do
      expect(@bluray.director).to eq('Director')
    end
    it 'should be able to get and set producer' do
      expect(@bluray.producer).to eq('producer')
    end
  end
end
