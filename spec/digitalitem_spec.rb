# You are on your own... good luck.
require_relative 'spec_helper'
require './lib/digital_item'

describe Digital do
  before(:context) do
    @digital = Digital.new("Pokemon", 20)
  end
#initialization
  describe "Initialization" do
    it "should be an instance of Digital" do
      expect(@digital).to be_instance_of(Digital)
    end

    it "should be a kind of Item" do
      expect(@digital).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@digital.name).to eq('Pokemon')
    end

    it 'is assigned a price' do
      expect(@digital.price).to eq(20)
    end
  end

#getters and setters
  describe "Accessors" do
    it "assigns a name" do
      @digital.name = "New Name"
      expect(@digital.name).to eq("New Name")
    end
    it "assigns a price" do
      @digital.price = 16
      expect(@digital.price).to eq(16)
    end
  end

  # check methods
  describe "methods" do
    it "should have a quanity of 1" do
      expect(@digital.quantity).to eq(1)
    end

    it "should not change quantity with amount sold" do
      result = @digital.sell(3)
      expect(result).to eq(true)
      expect(@digital.quantity).to eq(1)
    end

    it "should not change quantity with amount stocked" do
      result = @digital.stock(3)
      expect(result).to eq(true)
      expect(@digital.quantity).to eq(1)
    end
  end
end
