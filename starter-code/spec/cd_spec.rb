require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initialize item
    @cd = Cd.new("Generic CD", 10, 12, "Generic Artist", 40)
  end

  #check initialization
  describe "Initialization" do
		#check that it is an extended from Item
		it "is an extended class from Item" do 
  			expect(Cd).to be < Item
  		end
  		it "is assigned a name" do
      expect(@cd.name).to eq("Generic CD")
    end
    it "is assigned a price" do
      expect(@cd.price).to eq(10)
    end
  		#check that it is an instance of Cd
  		it "is an instance of Cd" do
  			expect(@cd).to be_instance_of(Cd)
  		end
  		it "is assigned a number of tracks" do
      expect(@cd.tracks).to eq(12)
    end
    it "is assigned an artist" do
      expect(@cd.artist).to eq("Generic Artist")
    end
    it "is assigned a runtime" do
      expect(@cd.runtime).to eq(40)
    end
	end
  
  describe "Accessors" do
		#check getters and setters
		it "should be able to get and set tracks" do
	     	@cd.tracks=13
	      expect(@cd.tracks).to eq(13)
	    end

	   it "should be able to get and set artist" do
	     	@cd.artist="New Artist"
	      expect(@cd.artist).to eq("New Artist")
	    end
	end

	describe "Methods" do
    it "should be able to shorten the runtime" do
      @cd.cut_runtime 10
      expect(@cd.runtime).to eq(30)
    end
  end

end
