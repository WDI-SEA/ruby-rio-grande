require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    #initialize item
    @bluray = Bluray.new('Hook', 15.00, 127, 'Steven Spielberg', 'John Locke')
  end

  describe "initialization" do

	  #check initialization
	  it "is assigned a name" do
	  	expect(@bluray.name).to eq("Hook")
	  end

	  it "is assigned a price" do
	  	expect(@bluray.price).to eq(15.00)
	  end

	  it "is assigned a run time" do
	  	expect(@bluray.run_time).to eq(127)
	  end

	  it "is assigned a director" do
	  	expect(@bluray.director).to eq("Steven Spielberg")
	  end

	  it "is assigned a producer" do
	  	expect(@bluray.producer).to eq("John Locke")
	  end
	  #check that it is an extended from Item
	  it "is extended from Item" do
	  	expect(@bluray).to be_kind_of(Item)
	  end
	  #check that it is an instance of Bluray
	  it "is extended from Item" do
	  	expect(@bluray).to be_instance_of(Bluray)
	  end

	  #check getters and setters
	  it "allows writing" do
	  	@bluray.name = "Third Encounters"
	  	expect(@bluray.name).to eq("Third Encounters")
	  end
	end

end
