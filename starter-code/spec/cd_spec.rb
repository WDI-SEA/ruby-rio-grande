require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initialize item
    @cd = Cd.new('Thriller', 12, 10, 'Michael Jackson', '60 minutes')
  end

  #check initialization
  describe 'CD Initialization' do
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end

    it 'should have a name' do
      expect(@cd.name).to eq('Thriller')
    end

    it 'should have a price' do
      expect(@cd.price).to eq(12)
    end

    it 'should have a track count' do
      expect(@cd.tracks).to eq(10)
    end


    it 'should have an artist' do
      expect(@cd.artist).to eq('Michael Jackson')
    end

    it 'should have a playtime' do
      expect(@cd.playtime).to eq('60 minutes')
    end

    #check that it is an extended from Item
    it 'should be a kind of Item' do
      expect(@cd).to be_kind_of(Item)
    end

    #check that it is an instance of Cd
    it 'should be an instance of Cd' do
      expect(@cd).to be_instance_of(Cd)
    end

  end

  #check getters and setters

  describe 'CD getters and setters' do

    it 'assigns and reads the name' do
      @cd.name = 'Creep'
      expect(@cd.name).to eq('Creep')
    end

    it 'assigns and reads the price' do
      @cd.price = 20
      expect(@cd.price).to eq(20)
    end

    it 'assigns and reads the track count' do
      @cd.tracks = 55
      expect(@cd.tracks).to eq(55)
    end

    it 'assigns and reads the artist' do
      @cd.artist = 'Radiohead'
      expect(@cd.artist).to eq('Radiohead')
    end

    it 'assigns and reads the playtime' do
      @cd.playtime = '1000 minutes'
      expect(@cd.playtime).to eq('1000 minutes')
    end

  end

end
