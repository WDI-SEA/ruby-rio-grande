require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    @bluray = Bluray.new('Best in Show', 29.99, 90, 'Christopher Guest', 'Karen Murphy')
  end

  describe 'initialization' do

    it 'should be a Bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end

    it 'should be an Item' do
      expect(@bluray).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@bluray.name).to eq('Best in Show')
    end

    it 'is assigned a price' do
      expect(@bluray.price).to eq(29.99)
    end

    it 'is assigned a runtime' do
      expect(@bluray.runtime).to eq(90)
    end

    it 'is assigned a director' do
      expect(@bluray.director).to be('Christopher Guest')
    end

    it 'is assigned a producer' do
      expect(@bluray.producer).to be('Karen Murphy')
    end

  end

  describe 'getters and setters' do
    
    it 'sets and gets the name' do
      @bluray.name = 'Mad Max: Fury Road'
      expect(@bluray.name).to eq('Mad Max: Fury Road')
    end

    it 'sets and gets the price' do
      @bluray.price= 28.99
      expect(@bluray.price).to eq(28.99)
    end

    it 'sets and gets the runtime' do
      @bluray.runtime= 120
      expect(@bluray.runtime).to eq(120)
    end 

    it 'sets and gets the director' do
      @bluray.director= 'George Miller'
      expect(@bluray.director).to eq('George Miller')
    end

    it 'sets and gets the producer' do
      @bluray.producer= 'George Miller'
      expect(@bluray.director).to eq('George Miller')
    end
  end
  
  describe "Methods" do
    it "should be able to stock" do
      result = @blueray.stock(5)
      expect(result).to eq(true)
      expect(@blueray.quantity).to eq(5)
    end

    it "should be able to sell" do
      result = @blueray.sell(2)
      expect(result).to eq(true)
      expect(@blueray.quantity).to eq(3)
    end

    it "should not sell if no quantity" do
      result = @blueray.sell(5)
      expect(result).to eq(false)
      expect(@blueray.quantity).to eq(3)
    end
    
  end

end
