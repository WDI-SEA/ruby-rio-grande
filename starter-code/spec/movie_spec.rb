require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    @movie = Movie.new('Cars', 10, "1.5 Hours", 'Bob', 'Steve')
  end

#check initialization
  describe 'Initialization' do

    it 'Should be an Movie' do
      expect(@movie).to be_instance_of(Movie)
    end

    it 'Should be a Digital Item' do
      expect(@movie).to be_kind_of(DigitalItem)
    end

    it 'Should be assigned a name' do
      expect(@movie.name).to eq('Cars')
    end

    it 'Should be assigned a price' do
      expect(@movie.price).to eq(10)
    end

    it 'Should be assigned runtime' do
      expect(@movie.runtime).to eq('1.5 Hours')
    end

    it 'Should be assigned a director' do
      expect(@movie.director).to eq('Bob')
    end

    it 'Should be assigned a produced' do
      expect(@movie.producer).to eq('Steve')
    end
end 

# check getters and setters
  describe 'Getters and Setters' do
    it 'assigns and reads the name' do
      @movie.name = 'Dogs'
      expect(@movie.name).to eq('Dogs')
    end

    it 'assigns and reads a price' do
      @movie.price = 15
      expect(@movie.price).to eq(15)
    end

    it 'assigns and reads the runtime' do
      @movie.runtime = '10 minutes'
      expect(@movie.runtime).to eq('10 minutes')
    end

    it 'assigns and reads the director' do
      @movie.director= 'Cat'
      expect(@movie.director).to eq('Cat')
    end

    it 'assigns and reads the producer' do
      @movie.producer = 'God'
      expect(@movie.producer).to eq('God')
    end
  end
end