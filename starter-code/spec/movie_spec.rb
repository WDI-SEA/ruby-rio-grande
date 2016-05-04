require_relative 'spec_helper'
require_relative '../lib/DigitalItem'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    @movie = Movie.new("Dallas Buyers Club",9.99,117,"Jean-Marc Vallée", "Robbie Brenner")
  end


  describe "Initialization" do
    it "Movie to be inherited from Digital" do
      expect(Movie).to be < Digital 
    end
     it "is assigned a title" do
      expect(@movie.name).to eq("Dallas Buyers Club")
    end
    it "is assigned a price" do
      expect(@movie.price).to eq(9.99)
    end
    it "is assigned a runtime" do
      expect(@movie.runtime).to eq(117)
    end
    it "is assigned an artist" do
      expect(@movie.director).to eq("Jean-Marc Vallée")
    end
     it "is assigned an artist" do
      expect(@movie.producer).to eq("Robbie Brenner")
    end
  end

  describe "Accessors" do
    it "should be able to get and set runtime" do
      @movie.runtime=117
      expect(@movie.runtime).to eq(117)
    end
    it "should be able to get and set director" do
      @movie.director="Jean-Marc Vallée"
      expect(@movie.director).to eq("Jean-Marc Vallée")
    end
    it "should be able to get and set artist" do
      @movie.producer="Robbie Brenner"
      expect(@movie.producer).to eq("Robbie Brenner")
    end
  end
end