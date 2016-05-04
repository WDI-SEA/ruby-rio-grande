require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

	before(:context) do
    #initialize item
    @movie = Movie.new "Movie title", 10.99, "2 hours", "Beiber", "Beiber Productions"
  end

  #check initialization
  describe "initialization" do
	  #check that it is an extended from DigitalItem
	  it "extend from the DigitalItem class" do
	  	expect(Movie).to be < DigitalItem
	  end
	  #check that it is an instance of Movie
	  it "is an instance of the Movie class" do
	  	expect(@movie).to be_instance_of(Movie)
	  end
	end

	describe "Accessors" do
	  #check getters and setters
	  it "should be able to get and set name" do
	  	@movie.name = "Movie Title"
	  	expect(@movie.name).to eq("Movie Title")
	  end
	  it "should be able to get and set price" do
	  	@movie.price = 10.99
	  	expect(@movie.price).to eq(10.99)
	  end
	  it "should be able to get and set run_time" do
	  	@movie.run_time = "2 hours"
	  	expect(@movie.run_time).to eq("2 hours")
	  end
	  it "should be able to get and set director" do
	  	@movie.director = "Beiber"
	  	expect(@movie.director).to eq("Beiber")
	  end
	  it "should be able to get and set Producer" do
	  	@movie.producer = "Beiber Productions"
	  	expect(@movie.producer).to eq("Beiber Productions")
	  end
	end

	describe "Methods" do
     it "quanity should always be 1" do
      expect(@movie.quantity).to eq(1)
    end
    it "should not decrease quanity when sold" do
      result = @movie.sell 3
      expect(result).to eq(true)
      expect(@movie.quantity).to eq(1)
      expect(@movie.quantity).not_to be < 1

    end
    it "should not increase quanity when stocked" do
      result = @movie.stock(10)
      expect(result).to eq(true)
      expect(@movie.quantity).to eq(1)
    end
  end
end