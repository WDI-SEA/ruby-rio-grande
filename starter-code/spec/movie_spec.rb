require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    #initialize item
    @movie = Movie.new('Hook', 15.00, 127, 'Steven Spielberg', 'John Locke')
  end

  describe "initialization" do

	  #check initialization
	  it "is assigned a name" do
	  	expect(@movie.name).to eq("Hook")
	  end

	  it "is assigned a price" do
	  	expect(@movie.price).to eq(15.00)
	  end

	  it "is assigned a run time" do
	  	expect(@movie.run_time).to eq(127)
	  end

	  it "is assigned a director" do
	  	expect(@movie.director).to eq("Steven Spielberg")
	  end

	  it "is assigned a producer" do
	  	expect(@movie.producer).to eq("John Locke")
	  end
	  #check that it is an extended from Item
	  it "is extended from Item" do
	  	expect(@movie).to be_kind_of(DigitalItem)
	  end
	  #check that it is an instance of movie
	  it "is extended from Item" do
	  	expect(@movie).to be_instance_of(Movie)
	  end

	  #check getters and setters
	  it "allows writing" do
	  	@movie.name = "Third Encounters"
	  	expect(@movie.name).to eq("Third Encounters")
	  end
	end

end
