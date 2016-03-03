require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    #initialize item
    @bluray =Bluray.new('Iron Man', 25, 120, 'John Favreau', 'Evan')
  end

  #check initialization
  describe 'Initialization' do
    #check that it is an extended from Item
    it 'Sould be a kind of' do
      expect(@bluray).to be_kind_of(Item)
    end
    #check that it is an instance of Bluray
    it 'Should be an instance of' do
      expect(@bluray).to be_instance_of(Bluray)
    end

    it 'Should have a name' do
      expect(@bluray.name).to eq('Iron Man')
    end

    it 'Should have a price' do
      expect(@bluray.price).to eq(25)
    end

    it 'Should have a run time' do
      expect(@bluray.run_time).to eq(120)
    end

    it 'Should have a director' do
      expect(@bluray.director).to eq('John Favreau')
    end

    it 'Should have a producer' do
      expect(@bluray.producer).to eq('Evan')
    end

  end
  
  
  #check getters and setters
  describe 'bluray getters and setters' do

    it 'assign and check name' do
      @bluray.name = 'Avatar'
      expect(@bluray.name).to eq('Avatar')
    end

    it 'assign and check price' do
      @bluray.price = 45
      expect(@bluray.price).to eq(45)
    end

    it 'assign and check run time' do
      @bluray.run_time = 500
      expect(@bluray.run_time).to eq(500)
    end

    it 'assign and check director' do
      @bluray.director = 'Spielberg'
      expect(@bluray.director).to eq('Spielberg')
    end

    it 'assign and check producer' do
      @bluray.producer = 'Lucas'
      expect(@bluray.producer).to eq('Lucas')
    end

  end

end
