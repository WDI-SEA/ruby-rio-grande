# You are on your own... good luck.
require_relative 'spec_helper'
require './lib/digital_item'

describe Digital do
  before(:context) do
    @digital = Digital.new("Pony", 20)
  end

  describe "Initialization" do
    it "should be an instance of Digital" do
      expect(@digital).to be_instance_of(Digital)
    end

    it "should be a kind of Item" do
      expect(@digital).to be_kind_of(Item)
    end
  end

  describe "Getters and Setters" do
    it "assigns a name" do
      @digital.name = "Colt"
      expect(@digital.name).to eq("Colt")
    end
    it "assigns a price" do
      @digital.price = 5
      expect(@digital.price).to eq(5)
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
