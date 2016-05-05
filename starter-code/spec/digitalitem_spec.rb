# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../lib/Item'
require_relative '../lib/DigitalItem'

describe DigitalItem do

  before(:context) do
    #initialize DigitalItem
    @digitalitem = DigitalItem.new("Generic DigitalItem", 20, 1.5)
  end

  #check initialization
  describe "Initialization" do
		#check that it is an extended from Item
		it "is an extended class from Item" do 
  			expect(DigitalItem).to be < Item
  		end
  		it "is assigned a name" do
      expect(@digitalitem.name).to eq("Generic DigitalItem")
   	end
   	it "is assigned a price" do
      expect(@digitalitem.price).to eq(20)
  		end
  		#check that it is an instance of DigitalItem
  		it "is an instance of DigitalItem" do
  			expect(@digitalitem).to be_instance_of(DigitalItem)
  		end
  		it "is assigned a file size (GB)" do
      expect(@digitalitem.filesize).to eq(1.5)
    end
    it "is assigned a weight of -1" do
      expect(@digitalitem.weight).to eq(-1)
    end
	end

	describe "Accessors" do
		#check getters and setters
		it "should be able to get and set filesize" do
	     	@digitalitem.filesize=2
	      expect(@digitalitem.filesize).to eq(2)
	    end
          it "should not be able to set weight" do
            @digitalitem.weight=2
            expect(@digitalitem.weight).to eq(-1)
          end

	end

	describe "Methods" do
     it "should not be able to stock more or less than 1" do
        @digitalitem.stock 5
        expect(@digitalitem.quantity).to eq(1)
      end
     it "should be able to sell items and keep quantity the same" do
     		@digitalitem.sell 2
	     expect(@digitalitem.quantity).to eq(1)
    end
    it "should not be able to calculate ship price" do
      expect(@digitalitem.ship_price).to eq(nil)
    end
  end
end
