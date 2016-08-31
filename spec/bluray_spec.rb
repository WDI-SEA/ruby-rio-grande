require_relative 'spec_helper'
require_relative '../lib/bluray'

# initialize item
describe Bluray do
  before(:context) do
    @bluray = Bluray.new('Die Hard', 12.99, 94, 'John McTiernan', 'Joel Silver')
  end

  # check initialization
  describe 'Initialization' do
    it 'is an instance of the Bluray class' do
      expect(@bluray).to be_instance_of(Bluray)
    end
    # check that it is an extended from Item
    it 'is assigned a name' do
      expect(@bluray.name).to eq('Die Hard')
    end
    it 'is assigned a price' do
      expect(@bluray.price).to eq(12.99)
    end
    # check that it is an instance of Bluray
    it 'is assigned a run time'do
      expect(@bluray.runTime).to eq(94)
    end
    it 'is assigned a director' do
      expect(@bluray.director).to eq('John McTiernan')
    end
    it 'is assigned a producer' do
      expect(@bluray.producer).to eq('Joel Silver')
    end
  end

  # check getters and setters
  describe 'Accessors' do
    it 'should be able to get and set name' do
      @bluray.name = 'Three Men and a Baby'
      expect(@bluray.name).to eq('Three Men and a Baby')
    end
    it 'should be able to get and set price' do
      @bluray.price = 6.99
      expect(@bluray.price).to eq(6.99)
    end
    it 'should be able to get and set run time' do
      @bluray.runTime = 90
      expect(@bluray.runTime).to eq(90)
    end
    it 'should be able to get and set director' do
      @bluray.director = 'Jackson Duhon'
      expect(@bluray.director).to eq('Jackson Duhon')
    end
    it 'should be able to get and set producer' do
      @bluray.producer = 'Farge Alpha'
      expect(@bluray.producer).to eq('Farge Alpha')
    end
  end

  #Checking methods
  describe 'Methods' do
    it 'should be able to stock' do
      result = @bluray.stock 15
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(15)
    end
    it 'should not be able to sell more items than we have' do
      result = @bluray.sell 900
      expect(result).to eq(false)
      expect(@bluray.quantity).to eq(15)
    end
    it 'should be able to sell items and update quantity' do
      result = @bluray.sell 3
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(12)
    end
  end
end
