require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    #initialize item
    @bluray = Bluray.new("Kill Bill", 16.00, 90, "Quentin Tarantino", "Quentin Tarantino")
  end

  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Bluray
  describe 'Initialization' do
      it 'should be a bluray' do
        expect(@bluray).to be_instance_of(Bluray)
      end

      it 'should be an item' do
        expect(@bluray).to be_kind_of(Item)
      end

      it 'is assigned a name' do
        expect(@bluray.name).to eq("Kill Bill")
      end

      it 'is assigned a price' do
        expect(@bluray.price).to eq(16.00)
      end

      it 'is assigned a runtime' do
        expect(@bluray.run_time).to eq(90)
      end

      it 'is assigned a director' do
        expect(@bluray.director).to eq("Quentin Tarantino")
      end 

      it 'is assigned a producer' do
        expect(@bluray.producer).to eq("Quentin Tarantino")
      end
  end 

  #check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the run_time' do
      @bluray.run_time = 95
      expect(@bluray.run_time).to eq(95)
    end

    it 'assigns and reads the director' do
      @bluray.director = 'Speilberg'
      expect(@bluray.director).to eq('Speilberg')
    end

    it 'assigns and reads the producer' do
      @bluray.producer = 'jay-z'
      expect(@bluray.producer).to eq('jay-z')
    end
  end
end
