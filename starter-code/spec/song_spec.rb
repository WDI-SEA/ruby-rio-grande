# You are on your own... good luck.
require_relative 'spec_helper'
require_relative('../lib/Song.rb')

describe Song do 

	before(:context) do
		@song = Song.new('Hello', 0.99, 180, 'Lionel Richie')
	end

	it "is an instance of digital item" do
		expect(@song).to be_kind_of(DigitalItem)
	end

	it "is an instance of Song" do
		expect(@song).to be_instance_of(Song)
	end

	it "has a title" do
		expect(@song.name).to eq("Hello")
	end

	it "has a price" do
		expect(@song.price).to eq(0.99)
	end

	it "has a runtime" do
		expect(@song.run_time).to eq(180)
	end

	it "has an artist" do
		expect(@song.artist).to eq("Lionel Richie")
	end

	it "is writeable" do
		@song.artist = "Incubus"
		expect(@song.artist).to eq("Incubus")
	end
end