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
  		it "is assigned a number of file size (GB)" do
      expect(@digitalitem.filesize).to eq(1.5)
    end
	end

	describe "Accessors" do
		#check getters and setters
		it "should be able to get and set filesize" do
	     	@digitalitem.filesize=2
	      expect(@digitalitem.filesize).to eq(2)
	    end
	end

	describe "Methods" do
    it "should be able to shorten the runtime" do
      @cd.cut_runtime 10
      expect(@cd.runtime).to eq(30)
    end
  end
end
