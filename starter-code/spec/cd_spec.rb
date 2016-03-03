require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    @cd = Cd.new(10, 15.00, "something", "altj", "30:00" )
  end

 #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Cd
	describe 'checking initialization' do
		it 'Should be an instance of item' do
			expect(@cd).to be_kind_of(Item)
		end
		it 'Should be an instance of cd' do
			expect(@cd).to be_instance_of(Cd)
		end
		it 'Should have number of track' do
			expect(@cd.track).to eq(10)
		end
		it 'Should have an artist' do
			expect(@cd.artist).to eq("altj")
		end
		it 'Should have a total run-time' do
			expect(@cd.run_time).to eq("30:00")
		end	
		it 'Should have a have a prcie' do
			expect(@cd.price).to eq(15.00)
		end
		it 'Should have an album name' do
			expect(@cd.name).to eq("something")
		end
	end
 
	  #check getters and setters
	describe 'getters and setter' do
	  	it"should be able to read and right artis" do
	  		@cd.artist = "coolio"
	  		expect(@cd.artist).to eq("coolio")
	  	end
	  	it"Should be able to reader and write tracks" do
	  		@cd.track = 15
	  		expect(@cd.track).to eq(15)
	  	end
	  	it"Should be able to read and write run-time" do
	  		@cd.run_time = "15:00"
	  		expect(@cd.run_time).to eq("15:00")
	  	end
	end
end
