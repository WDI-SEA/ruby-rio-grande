require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    @bluray = Bluray.new('Best in Show', 29.99, 90, 'Christopher Guest', 'Karen Murphy')
  end

  describe 'initialization' do
    it 'is an instance of Bluray class' do
      expect(@bluray).to be_instance_of(Bluray)
    end
    it 'is extended from Item' do
      expect(@bluray).to be_kind_of(Item)
    end
    it 'has a name' do
      expect(@bluray).to eq('Mad Max: Fury Road')
    end
    it 'has a price' do
      expect(@bluray).to eq(29.99)
    end
    it 'has a runtime' do
      expect(@bluray).to eq(90)
    end
    it 'has a director' do
      expect(@bluray).to eq('Christopher Guest')
    end
    it 'has a producer' do
      expect(@bluray).to eq('Karen Murphy')
    end
  end

  describe 'getters and setters' do
    it 'sets and gets the name' do
      @bluray.name = 'Mad Max: Fury Road'
      expect(@bluray.name).to eq('Mad Max: Fury Road')
    end

    it 'sets and gets the price' do
      @bluray.price = 29.00
      expect(@bluray.price).to eq(29.00)
    end

    it 'sets and gets the runtime' do
      @bluray.runtime = 120
      expect(@bluray.runtime).to eq(120)
    end 

    it 'sets and gets the director' do
      @bluray.director = 'George Miller'
      expect(@bluray.director).to eq('George Miller')
    end

    it 'sets and gets the producer' do
      @bluray.producer = 'George Miller'
      expect(@bluray.director).to eq('George Miller')
    end
  end

end
