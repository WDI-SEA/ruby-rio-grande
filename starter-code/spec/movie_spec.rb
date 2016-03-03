require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do 
	before(:context) do
		@movie = Movie.new('Top Gun', 30, 130, 'Trump', 'Cruz')
	end

	describe "initialization" do
		it 'should be a movie' do
			expect(@movie).to be_an_instance_of(Movie)
		end
		it 'should be an item' do
			expect(@movie).to be_a_kind_of(DigitalItem)
		end
		it 'should have a name' do 
			expect(@movie.name).to eq('Top Gun')
		end
		it 'should have a price' do 
			expect(@movie.price).to eq(30)
		end
		it 'should have a run_time' do
			expect(@movie.run_time).to eq(130)
		end
		it 'should have a director' do
			expect(@movie.director).to eq('Trump')
		end
		it 'should have a producer' do 
			expect(@movie.producer).to eq('Cruz')
		end
	end
	describe 'getters and setters' do
		it 'assigns and reads the name' do
			@movie.name = 'Frozen'
			expect(@movie.name).to eq('Frozen')
		end
		it 'asigns and reads the price' do
			@movie.price = 50
			expect(@movie.price).to eq(50)
		end
		it 'asigns and reads the run_time' do
			@movie.run_time = 300
			expect(@movie.run_time).to eq(300)
		end
		it 'assigns and reads the director' do
			@movie.director = 'Bernie'
			expect(@movie.director).to eq('Bernie')
		end
		it 'assigns and reads the producer' do
			@movie.producer = 'Hillary'
			expect(@movie.producer).to eq('Hillary')
		end
	end
	describe "quantity" do
		it "should remain 1 after stock" do 
			@movie.stock 1
			expect(@movie.quantity).to eq(1)
		end
		it "should remain 1 after sell" do
			@movie.sell 1
			expect(@movie.quantity).to eq(1)
		end
	end 
end