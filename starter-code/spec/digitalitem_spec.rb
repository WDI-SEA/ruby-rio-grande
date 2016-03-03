require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do 

  before(:context) do
    @di = DigitalItem.new("Digimon", 2.99)
  end

  describe "Initialization" do
      it "is an instance of the DigitalItem class" do
        expect(@di).to be_instance_of(DigitalItem)
      end
      it "is assigned a name" do
        expect(@di.name).to eq("Digimon")
      end
      it "is assigned a price" do
        expect(@di.price).to eq(2.99)
      end
    end

    describe "Accessors" do
      it "should be able to get quantity" do
        expect(@di.quantity).to eq(0)
      end
      it "should be able to get and set name" do
        @di.name="New Name"
        expect(@di.name).to eq("New Name")
      end
      it "should be able to get and set price" do
        @di.price=44.99
        expect(@di.price).to eq(44.99)
      end
      it "should be able to get and set description" do
        expect(@di.description).to eq("")
        @di.description="test"
        expect(@di.description).to eq("test")
      end  
    end

    describe "Methods" do
    it "should not increase on stock" do
      result = @di.stock 0
      expect(@di.quantity).to eq(0)
    end
    it "should not decrease when sold" do
      result = @di.sell 0
      expect(@di.quantity).to eq(0)
    end
    it "should be not able to sell items and update quantity" do
      result = @di.sell 0
      expect(@di.quantity).to eq(0)
    end

    it "should be able to be returned" do
      result = @di.return 0
      expect(@di.quantity).to eq(0)
    end

    it "should not be able to set weight" do
      expect(@di.oz).to eq(-1)
    end

    it "should not be able to set price per oz" do
      result = @item.ship_price 1
      expect(result).to eq(false)
      expect(@di.ship_price).to eq(0)

    end

  end
end