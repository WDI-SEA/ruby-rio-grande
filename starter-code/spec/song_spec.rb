require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song  do

	before(:context) do
		@song = Song.new("name", 10.00, "5:00", "artist")
	end

	describe "Initialization" do
		it "should be an instance of Song" do
			expect(@song).to be_instance_of(Song)
		end
		it "should be a kind of digital item" do
			expect(@song).to be_kind_of(Digital_Item)
		end
		it "has a run_time" do
			expect(@song.run_time).to eq("5:00")
		end
		it "has a artist" do
			expect(@song.artist).to eq("artist")
		end


	end

	describe "getters and setters" do

		it "should read and write run_time" do
			@song.run_time = "6:00"
			expect(@song.run_time).to eq("6:00")
		end
		it "should read and write artist" do
			@song.artist = "new artist"
			expect(@song.artist).to eq("new artist")
		end

	end

end