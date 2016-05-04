# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../lib/DigitalItem'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    #initialize item
     @movie = Movie.new("Generic Movie", 40, 4.2, 140, "Generic Director", "Generic Producer")
  end

  #check initialization
  describe "Initialization" do
  	#check that it is an extended from Item
  	it "is an extended class from Item" do 
  		expect(Movie).to be < Item
  	end
  	#check that it is an extended from DigitalItem
  	it "is an extended class from DigitalItem" do 
  		expect(Movie).to be < DigitalItem
  	end
  #check that it is an instance of Movie
    it "is an instance of the Movie class" do
      expect(@movie).to be_instance_of(Movie)
    end
    it "is assigned a name" do
      expect(@movie.name).to eq("Generic Movie")
    end
    it "is assigned a price" do
      expect(@movie.price).to eq(40)
    end
    it "is assigned a filesize" do
      expect(@movie.filesize).to eq(4.2)
    end
    it "is assigned a runtime" do
      expect(@movie.runtime).to eq(140)
    end
    it "is assigned a director" do
      expect(@movie.director).to eq("Generic Director")
    end
  	 it "is assigned a producer" do
      expect(@movie.producer).to eq("Generic Producer")
    end
  end

	describe "Accessors" do
		#check getters and setters
		it "should be able to get and set runtime" do
	     	@movie.runtime=120
	      expect(@movie.runtime).to eq(120)
	    end

	   it "should be able to get and set director" do
	     	@movie.director="New Director"
	      expect(@movie.director).to eq("New Director")
	    end

	   it "should be able to get and set producer" do
	     	@movie.producer="New Producer"
	      expect(@movie.producer).to eq("New Producer")
	    end
	end

	describe "Methods" do
    it "should be able to change language" do
      @movie.change_language
      expect(@movie.language).to eq("Korean")
    end
  end
end