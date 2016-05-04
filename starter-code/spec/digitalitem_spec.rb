require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do

  before(:context) do
    #initialize item
    @item = DigitalItem.new("Name", 20)
  end

  #check initialization
  describe 'Initialization' do
    it "is an instance of the Item class" do
      expect(@item).to be_a(Item)
    end
  end
  #check that it is an extended from Item
    describe 'Extension' do
      it "is extended from Item" do
        expect(@item).to be_an(Item)
      end
    end
  #check that it is an instance of Bluray
    describe 'Instance' do
    it "is an instance of the DigitalItem class" do
      expect(@item).to be_instance_of(DigitalItem)
    end
  end
  #check getters and setters
  describe "Quantiy and weight" do
    it "defaults to a quantity of 1" do
      expect(@item.quantity).to eq(1)
    end
    it "defaults to a weight of -1" do
      expect(@item.weight).to eq(-1)
    end
  end

  
  describe 'Methods' do
    it "should not be able to set quantity" do
      @item.sell 75
      expect(@item.quantity).to eq(1)
    end 
    it "should not be able to change quantity" do
    @item.return 1
    expect(@item.quantity).to eq(1) 
  end
end

end

