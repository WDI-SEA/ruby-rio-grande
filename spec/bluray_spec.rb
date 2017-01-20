require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @bluray = Bluray.new('Harry Potter', 20.00, 700, 'JK Rowling', 'JK Rowling')
  end

  # check initialization
  # check initialization
  describe 'Initialization' do
    it 'should be a bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end

    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@bluray.name).to eq('Harry Potter')
    end

    it 'is assigned a price' do
      expect(@bluray.price).to eq(15.00)
    end

    it 'is assigned runtime' do
      expect(@bluray.runtime).to eq(700)
    end

    it 'is assigned an direction' do
      expect(@bluray.director).to eq('JK Rowling')
    end

     it 'is assigned an producer' do
      expect(@bluray.producer).to eq('JK Rowling')
    end
  end

  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @bluray.name = 'Paradise Lost'
      expect(@bluray.name).to eq('Paradise Lost')
    end

    it 'assigns and reads the price' do
      @bluray.price = 20.00
      expect(@bluray.price).to eq(20.00)
    end

    it 'assigns and reads the pages' do
      @bluray.runtime = 0
      expect(@bluray.runtime).to eq(0)
    end

    it 'assigns and reads the author' do
      @bluray.director = 'John Milton'
      expect(@bluray.director).to eq('John Milton')
    end
  end
  
end
