require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new('jackson', 15.00, 700, 'micheal')
  end

  # check initialization
  describe 'Initialization' do
    it 'should be a book' do
      expect(@cd).to be_instance_of(Book)
    end

    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('Harry Potter')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(15.00)
    end

    it 'is assigned tracks' do
      expect(@cd.tracks).to eq(700)
    end

    it 'is assigned an artists' do
      expect(@cd.artists).to eq('jackson')
    end

    it 'is assigned an runtime' do
      expect(@cd.artists).to eq(10000)
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'thriller'
      expect(@cd.name).to eq('thriller')
    end

    it 'assigns and reads the price' do
      @cd.price = 20.00
      expect(@cd.price).to eq(20.00)
    end

    it 'assigns and reads the tracks' do
      @cd.tracks = 10
      expect(@cd.pages).to eq(10)
    end

    it 'assigns and reads the artists' do
      @cd.artists = 'John Milton'
      expect(@cd.artists).to eq('John Milton')
    end
  end
end
