require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initialize item
    @cd = Cd.new('Siamese Dream', 14.99, 11, 'Smashing Pumpkins', 49)
  end

  #check initialization
  describe "initialization" do

  	it "is assigned a name" do
  		expect(@cd.name).to eq('Siamese Dream')
  	end

  	it "is assigned a price" do
  		expect(@cd.price).to eq(14.99)
  	end

  	it "is assigned a track number" do
  		expect(@cd.tracks).to eq(11)
  	end

  	it "is assigned a title" do
  		expect(@cd.artist).to eq('Smashing Pumpkins')
  	end

  	it "is assigned a run time" do
  		expect(@cd.run_time).to eq(49)
  	end


	  #check that it is an extended from Item
	  it "is extended from item" do
	  	expect(@cd).to be_kind_of(Item)
	  end

	  #check that it is an instance of Cd
	  it "should be a CD" do
			expect(@cd).to be_instance_of(Cd)
		end


	  #check getters and setters
	  it "should allow setters" do
	  	expect(@cd.name = "Zeitgeist").to eq("Zeitgeist")
	  end
  
  end

end
