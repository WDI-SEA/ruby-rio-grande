require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do 
	before(:context) do
		@digitalitem = DigitalItem.new('iphone', 400)
	end

	describe "initialization" do
		it 'should be a digital item' do
			expect(@digitalitem).to be_an_instance_of(DigitalItem)
		end
		it 'should be an item' do
			expect(@digitalitem).to be_a_kind_of(DigitalItem)
		end
		it 'should have a name' do 
			expect(@digitalitem.name).to eq('iphone')
		end
		it 'should have a price' do 
			expect(@digitalitem.price).to eq(400)
		end
	end
	describe 'getters and setters' do
		it 'reads the name' do
			@digitalitem.name = 'android'
			expect(@digitalitem.name).to eq('android')
		end
		it 'reads the price' do
			@digitalitem.price = 200
			expect(@digitalitem.price).to eq(200)
		end
		it 'reads the quantity' do
			expect(@digitalitem.quantity).to eq(1)
		end
	end
	describe "quantity" do
		it "should remain 1 after stock" do 
			@digitalitem.stock 1
			expect(@digitalitem.quantity).to eq(1)
		end
		it "should remain 1 after sell" do
			@digitalitem.sell 1
			expect(@digitalitem.quantity).to eq(1)
		end
		it "should be able to return items" do
      	@digitalitem.return(2)
      	expect(@digitalitem.quantity).to eq(3)
    	end
    	it "should return ship price" do
      		@digitalitem.ship_price
      		expect(@digitalitem.ship_price).to eq(false)
    	end
	end 
end
