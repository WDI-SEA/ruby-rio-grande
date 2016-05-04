# You are on your own... good luck.

require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    #initialize item
    @movie = Movie.new ("Movie title", 29.99, 120, , "Tarentino", "Uma")
  end

  #check initialization
  describe "initialization" do
    it "extend from the DigitalItem class" do
      expect(Movie).to be < DigitalItem
    end
    it "is an instance of the Movie class" do
      expect(@movie).to be_instance_of(Movie)
    end
  end

 it "getters" do
  @movie.name = "Movie Title"
  expect(@movie.name).to eq("Movie Title")
  end

  it "setters" do
    @movie.price = 15.99
    expect(@movie.price).to eq(15.99)
  end
    
end