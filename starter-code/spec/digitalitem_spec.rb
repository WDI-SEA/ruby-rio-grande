require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem  do
  before(:context) do
    @digitalitem =DigitalItem.new("WDI manual", 20)
    
  end

  describe "initialization" do
    it "is an instance of" do
      expect(@digitalitem).to be_instance_of(DigitalItem)
    end
    it "is a kind of" do
      expect(@digitalitem).to be_kind_of(Item)
    end

    it "is assigned a name" do
      expect(@digitalitem.name).to eq("WDI manual")
    end

    it "is assigned a price" do
      expect(@digitalitem.price).to eq(20)
    end
    it "has a weight" do
      expect(@digitalitem.weight).to eq(-1)
    end
  end

  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@digitalitem.quantity).to eq(1)
    end

    it "should be able to get and set name" do
      @digitalitem.name="New Name"
      expect(@digitalitem.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @digitalitem.price=44.99
      expect(@digitalitem.price).to eq(44.99)
    end
  end

  describe "Methods" do
    it "should not increase on stock" do
      result = @digitalitem.stock 5
      expect(result).to eq(true)
      expect(@digitalitem.quantity).to eq(1)  
    end
    it 'should not decrease when sold' do
      result = @digitalitem.sell 6
      expect(result).to eq(true)
      expect(@digitalitem.quantity).to eq(1)
    end 
    it "should not increase on return" do
      result = @digitalitem.return 5
      expect(result).to eq(true)
      expect(@digitalitem.quantity).to eq(1)  
    end
    it "should return false for ship_price" do
      expect(@digitalitem.ship_price).to eq(false)
    end

    
  end
end