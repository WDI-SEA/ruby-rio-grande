require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    #initialize item
    @bluray = Bluray.new('Matrix', 10.00, "90:00", "Wachowski Bros", "Warner Bros")

  end

  #Check Instances and attributes

  	describe 'checking initialization' do
  		it 'Should be an instance of bluray' do
			expect(@bluray).to be_instance_of(Bluray)
		end
		it 'Should be kind of item' do
			expect(@bluray).to be_kind_of(Item)
		end
		it 'Should have a runtime' do
			expect(@bluray.run_time).to eq("90:00")
		end
		it 'should have a director' do
			expect(@bluray.director).to eq("Wachowski Bros")	
		end
		it 'should have a producer' do
			expect(@bluray.producer).to eq("Warner Bros")
		end
		it 'should have a name' do 
			expect(@bluray.name).to eq("Matrix")
		end
		it 'should have a price' do
			expect(@bluray.price).to eq(10.00)
		end
	end
    #check getters and setters

    describe 'checking getters and setters' do
    	it 'should be able to read and write runtime' do
    		@bluray.run_time = "92:00"
    		expect(@bluray.run_time).to eq("92:00")	
    	end
    	it 'should be able to read and write director' do
    		@bluray.director = "person"
    		expect(@bluray.director).to eq("person")
    	end
    	it 'should be able to read and write the producer' do
    		@bluray.producer = "studio"
    		expect(@bluray.producer).to eq("studio")
    	end
    end


end
