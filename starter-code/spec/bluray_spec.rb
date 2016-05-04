require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
  @bluray = Bluray.new("Movie Name", 12, 120, "Steven Spielberg", "George Lucas")
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@bluray).to be_a(Item)
    end
    it "is extended from Item" do
      expect(@bluray).to be_an(Item)
    end
    it "is an instance of blueray" do
      expect(@bluray).to be_instance_of(Bluray)
    end
  end
describe "Accessors" do
    
    it "should be able to get director" do
      expect(@bluray.director).to eq("Steven Spielberg")
    end
    it "should be able to get producer" do
      expect(@bluray.producer).to eq('George Lucas')
    end
    it "should be able to get quantity" do
      expect(@bluray.quantity).to eq(0)
    end
    it "should be able to get and set name" do
      @bluray.name="New Name"
      expect(@bluray.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @bluray.price=44.99
      expect(@bluray.price).to eq(44.99)
    end
    it "should be able to get and set description" do
      expect(@bluray.description).to eq("")
      @bluray.description="test"
      expect(@bluray.description).to eq("test")
    end
  end



  describe "Methods" do
    it "should be able to stock" do
      result = @bluray.stock 5
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @bluray.sell 6
      expect(result).to eq(false)
      expect(@bluray.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @bluray.sell 3
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(2)
    end
  end


end



 