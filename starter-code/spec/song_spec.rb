# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../lib/DigitalItem'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    #initialize item
     @song = Song.new("Generic Song", 2, 0.01, 4, "Generic Artist")
  end

  #check initialization
  describe "Initialization" do
  	#check that it is an extended from Item
  	it "is an extended class from Item" do 
  		expect(Song).to be < Item
  	end
  	#check that it is an extended from DigitalItem
  	it "is an extended class from DigitalItem" do 
  		expect(Song).to be < DigitalItem
  	end
  #check that it is an instance of Song
    it "is an instance of the Song class" do
      expect(@song).to be_instance_of(Song)
    end
    it "is assigned a name" do
      expect(@song.name).to eq("Generic Song")
    end
    it "is assigned a price" do
      expect(@song.price).to eq(2)
    end
    it "is assigned a filesize" do
      expect(@song.filesize).to eq(0.01)
    end
    it "is assigned a runtime" do
      expect(@song.runtime).to eq(4)
    end
    it "is assigned an artist" do
      expect(@song.artist).to eq("Generic Artist")
    end
  end

	describe "Accessors" do
		#check getters and setters
		it "should be able to get and set runtime" do
	     	@song.runtime=2
	      expect(@song.runtime).to eq(2)
	    end

	   it "should be able to get and set artist" do
	     	@song.artist="New Artist"
	      expect(@song.artist).to eq("New Artist")
	    end
	end

	describe "Methods" do
    it "should be able to get a discount" do
      @song.discount 1
      expect(@song.price).to eq(1)
    end
  end
end