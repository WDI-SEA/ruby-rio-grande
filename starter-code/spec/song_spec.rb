require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    @song = Song.new('Me', 1, "3 minutes", 'Bob')
  end

#check initialization
  describe 'Initialization' do

    it 'Should be an Song' do
      expect(@song).to be_instance_of(Song)
    end

    it 'Should be a Digital Item' do
      expect(@song).to be_kind_of(DigitalItem)
    end

    it 'Should be assigned a name' do
      expect(@song.name).to eq('Me')
    end

    it 'Should be assigned a price' do
      expect(@song.price).to eq(1)
    end

    it 'Should be assigned runtime' do
      expect(@song.runtime).to eq('3 minutes')
    end

    it 'Should be assigned an artist' do
      expect(@song.artist).to eq('Bob')
    end

end 

# check getters and setters
  describe 'Getters and Setters' do
    it 'assigns and reads the name' do
      @song.name = 'Dogs Barking'
      expect(@song.name).to eq('Dogs Barking')
    end

    it 'assigns and reads a price' do
      @song.price = 15
      expect(@song.price).to eq(15)
    end

    it 'assigns and reads the runtime' do
      @song.runtime = '10 minutes'
      expect(@song.runtime).to eq('10 minutes')
    end

    it 'assigns and reads the artist' do
      @song.artist= 'P-doodle'
      expect(@song.artist).to eq('P-doodle')
    end

  end
end