# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe Digital do

	before(:context) do
		@digital = Digital.new("Cool Movie", 25)
	end

	describe "initialization" do

		it "should be an instance of a digital item" do
			expect(@digital).to be_kind_of(Digital)
		end

		it "should be extended from Item" do
			expect(@digital).to be_kind_of(Item)
		end
	end

	describe "method" do

		it "ship price should return false" do
			 expect(@digital.ship_price).to eq(false)
		end

		it "should sell" do
			expect(@digital.sell).to eq(true)
		end

		#if sold quantity should remain at 1
		it "should maintain quantity of 1 even if sold" do
			expect(@digital.quantity).to eq(1)
		end
	end
end