require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    @bluray = Bluray.new('Titanic', 20, 200, 'JayZ', 'Bey')
  end

  describe "initialization" do
	  	it "should be a bluray" do
	  		expect(@bluray).to be_an_instance_of(Bluray)
	  	end
  		it 'should be an item' do
			expect(@bluray).to be_a_kind_of(Item)
		end
		it 'should have a name' do 
			expect(@bluray.name).to eq('Titanic')
		end
		it 'should have a price' do
			expect(@bluray.price).to eq(20)
		end
		it 'should have run_time' do
			expect(@bluray.run_time).to eq(200)
		end
		it 'should have a director' do 
			expect(@bluray.director).to eq('JayZ')
		end
		it 'should have a producer' do
			expect(@bluray.producer).to eq('Bey')
		end
  	end
  	describe 'getters and setters' do
  		it 'assigns and reads the name' do
			@bluray.name = 'Blue Valentine'
			expect(@bluray.name).to eq('Blue Valentine')
		end
		it 'asigns and reads the price' do
			@bluray.price = 40
			expect(@bluray.price).to eq(40)
		end
		it 'asigns and reads the run_time' do
			@bluray.run_time = 100
			expect(@bluray.run_time).to eq(100)
		end
		it 'asigns and reads the director' do
			@bluray.director = 'Me'
			expect(@bluray.director).to eq('Me')
		end
		it 'asigns and reads the producer' do
			@bluray.producer = 'Lady Gaga'
			expect(@bluray.producer).to eq('Lady Gaga')
		end
	end
end
  







  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Bluray
  #check getters and setters
