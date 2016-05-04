require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    #initialize item
    @movie = Movie.new( "runtime", "director", "producer")
  end

  #check initialization
  describe 'Initialization' do
    it "is an instance of the Item class" do
      expect(@movie).to be_a(Movie)
    end
  end
  #check that it is an extended from Item
    describe 'Extension' do
      it "is extended from DigitalItem" do
        expect(@movie).to be_an(DigitalItem)
      end
    end
  #check that it is an instance of Movie
    describe 'Instance' do
    it "is an instance of the DigitalItem class" do
      expect(@movie).to be_instance_of(Movie)
    end
  end
  #check getters and setters
  describe 'Accessors' do
    it "should be able to set/get runtime" do
      @movie.runtime = 75
      expect(@movie.runtime).to eq(75)
    end  
    it "should be able to set/get director" do
      @movie.director = "Person"
      expect(@movie.director).to eq("Person")
    end
    it "should be able to set/get producer" do
      @movie.producer = "AnotherPerson"
      expect(@movie.producer).to eq("AnotherPerson")
    end    
  end

end

