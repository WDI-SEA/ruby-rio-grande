require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initialize item
    @cd = Cd.new("bye bye bye", 5, 10,"NSYNC", 150)
  end

describe "initialization" do
		it 'should be a cd' do
			expect(@cd).to be_an_instance_of(Cd)
		end
		it 'should be an item' do
			expect(@cd).to be_a_kind_of(Item)
		end
		it 'should have a name' do 
			expect(@cd.name).to eq('bye bye bye')
		end
		it 'should have a price' do
			expect(@cd.price).to eq(5)
		end
		it 'should have tracks' do
			expect(@cd.tracks).to eq(10)
		end
		it 'should have artists' do 
			expect(@cd.artists).to eq('NSYNC')
		end
		it 'should have run_time' do
			expect(@cd.run_time).to eq(150)
		end
	end
	describe 'getters and setters' do
		it 'assigns and reads the name' do
			@cd.name = 'oops I did it again'
			expect(@cd.name).to eq('oops I did it again')
		end
		it 'asigns and reads the price' do
			@cd.price = 10
			expect(@cd.price).to eq(10)
		end
		it 'asigns the tracks' do
			@cd.tracks = 0
			expect(@cd.tracks).to eq(0)
		end
		it 'asigns the artists' do
			@cd.artists = 'BackStreet Boys'
			expect(@cd.artists).to eq('BackStreet Boys')
		end
		it 'asigns the run_time' do
			@cd.run_time = 50
			expect(@cd.run_time).to eq(50)
		end
	end
end













  #check that it is an instance of Cd
  #check getters and setters

