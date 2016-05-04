require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initialize item
    @cd = Cd.new "CD title", 10.99, 12, "Beiber", "1 Hour"
  end

  #check initialization
  describe "initialization" do
	  #check that it is an extended from Item
	  it "extend from the Item class" do
	  	expect(Cd).to be < Item
	  end
	  #check that it is an instance of Cd
	  it "is an instance of the Cd class" do
	  	expect(@cd).to be_instance_of(Cd)
	  end
	  #check getters and setters
	  it "is assigned a name" do
	  	expect(@cd.name).to eq("CD title")
	  end
	  it "is assigned a price" do
	  	expect(@cd.price).to eq(10.99)
	  end
	  it "is assigned a tracks" do
	  	expect(@cd.tracks).to eq(12)
	  end
	  it "is assigned a artist" do
	  	expect(@cd.artist).to eq("Beiber")
	  end
	  it "is assigned a run time" do
	  	expect(@cd.run_time).to eq("1 Hour")
	  end
	end

end
