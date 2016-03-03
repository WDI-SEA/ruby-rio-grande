require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do 
	before(:context) do
		@song = Song.new('Feeling Good', 5, 7, 'Muse')
	end

	describe "initialization" do
		it 'should be a song' do
			expect(@song).to be_an_instance_of(Song)
		end
		it 'should be an item' do
			expect(@song).to be_a_kind_of(DigitalItem)
		end
		it 'should have a name' do 
			expect(@song.name).to eq('Feeling Good')
		end
		it 'should have a price' do 
			expect(@song.price).to eq(5)
		end
		it 'should have an run_time' do
			expect(@song.run_time).to eq(7)
		end
		it 'should have an artists' do
			expect(@song.artists).to eq('Muse')
		end
	end
	describe 'getters and setters' do
		it 'assigns and reads the name' do
			@song.name = 'BYOB'
			expect(@song.name).to eq('BYOB')
		end
		it 'asigns and reads the price' do
			@song.price = 10
			expect(@song.price).to eq(10)
		end
		it 'asigns and reads the run_time' do
			@song.run_time = 3
			expect(@song.run_time).to eq(3)
		end
		it 'assigns and reads the artists' do
			@song.artists = 'SOAD'
			expect(@song.artists).to eq('SOAD')
		end
	end
	describe "quantity" do
		it "should remain 1 after stock" do 
			@song.stock 1
			expect(@song.quantity).to eq(1)
		end
		it "should remain 1 after sell" do
			@song.sell 1
			expect(@song.quantity).to eq(1)
		end
	end 
end