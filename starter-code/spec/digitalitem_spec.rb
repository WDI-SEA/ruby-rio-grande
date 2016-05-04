require_relative 'spec_helper'
require_relative '../lib/Item'
require_relative '../lib/DigitalItem'

describe Digital do

  before(:context) do
    @digital = Digital.new("Generic Digital Item",0.99)
  end


  describe "Initialization" do
    it "is an extended class of the Item class" do
      expect(Digital).to be < Item 
    end
    it "is an instance of the Digital class" do
      expect(@digital).to be_instance_of(Digital)
    end
     it "is assigned a name" do
      expect(@digital.name).to eq("Generic Digital Item")
    end
    it "is assigned a price" do
      expect(@digital.price).to eq(0.99)
    end
  end

  describe "Accessors" do
    it "should be able to get and set price" do
      @digital.price=0.99
      expect(@digital.price).to eq(0.99)
    end
    it "should be able to get and set director" do
      @digital.name="Generic Digital Item"
      expect(@digital.name).to eq("Generic Digital Item")
    end
end
   describe "Methods" do
    it "stock should always be 1" do
      result = @digital.stock 1
      expect(@digital.quantity).to eq(1)
    end
    it "should be able to sell items and keep the same quantity" do
      result = @digital.sell 1
      expect(@digital.quantity).to eq(1)
    end
    # it "should be able to sell items and update quantity" do
    #   result = @digital.sell 3
    #   expect(result).to eq(true)
    #   expect(@digital.quantity).to eq(2)
    # end
  end
end