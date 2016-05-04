require_relative 'spec_helper'
require_relative '../lib/Digitalitem'

describe Item do

  before(:context) do
    @digitalitem = Digitalitem.new(1,"horror")
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@digitalitem).to be_kind_of(Item)
    end
    it "has a quantity of one" do
      expect(@digitalitem.quantity).to eq(1)
    end
    it "has a description of horror" do
      expect(@digitalitem.description).to eq("horror")
    end

  end
end

