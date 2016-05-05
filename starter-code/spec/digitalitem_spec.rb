# You are on your own... good luck.

require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do

  before(:context) do
    #initialize item
    # (name, price, weight)
      @digital_item = DigitalItem.new "DigItem title", 9.99
  end

describe "initialization" do
    it "extend from the Item class" do
      expect(DigitalItem).to be < Item
    end
    it "is an instance of the DigitalItem class" do
      expect(@digital_item).to be_instance_of(DigitalItem)
    end
  end

it "getters" do
  expect(@digital_item.name).to eq("DigItem title")


end
it "setters" do
  @digital_item.price = 12
  expect(@digital_item.price).to eq(12)
  end


  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Book
  #check getters and setters

end
