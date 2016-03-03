require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initialize item
    @cd = Cd.new("GA WDI Soundtrack", 1.00, 12, "KLO", 5)
  end

  #check initialization
  describe "initialization" do

	  	#check that it is an instance of Cd
	  	it "should be a cd" do
	  		expect(@cd).to be_kind_of(Cd)
	  	end

	  	#check that it is an extended from Item
	  	it "should be an item" do
	  		expect(@cd).to be_kind_of(Item)
	  	end
  end

  #check getters and setters
  describe "getters and setters" do

  		it "assigns and read the name" do
  			@cd.name = "GA WDI Soundtrack"
  			expect(@cd.name).to eq("GA WDI Soundtrack")
  		end


  		it "assigns and read the price" do
  			@cd.price = 1.00
  			expect(@cd.price).to eq(1.00)
  		end

  		it "assigns and read the number of tracks" do
  			@cd.tracks = 12
  			expect(@cd.tracks).to eq(12)
  		end

  		it "assigns and read the artist" do
  			@cd.artist = "KLO"
  			expect(@cd.artist).to eq("KLO")
  		end

  		it "assigns and read the run time" do
  			@cd.run_time = 5
  			expect(@cd.run_time).to eq(5)
  		end
  	end
end
