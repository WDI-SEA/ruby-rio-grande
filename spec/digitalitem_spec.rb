# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe DigitalItem do
  before(:context) do
    @digital_item = DigitalItem.new("Starblazers", 4.20)
  end

  describe 'initialization' do
    it "should be a digital item" do
      expect(@digital_item).to be_instance_of(DigitalItem) 
    end

    it "should be an item" do
      expect(@digital_item).to be_kind_of(Item)
    end
  end

  describe "Methods" do
    it "should initialize with a quanity of one" do
      expect(@digital_item.quantity).to eq(1)
    end

    it "should have a quantity of one even after selling one" do
      result = @digital_item.sell(10)
      expect(@digital_item.quantity).to eq(1)
    end

    it "should have a quantity of one even if a quanity is added" do
      @digital_item.stock(100)
      expect(@digital_item.quantity).to eq(1)
    end

  end

end
