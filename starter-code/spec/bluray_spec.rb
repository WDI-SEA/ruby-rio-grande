require_relative 'spec_helper'
require_relative '../lib/Item'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    @bluray = Bluray.new "Bluray Title", 12.99, 64, "2 hours", "Director Name", "Producer Name"
  end

  #check initialization
  describe "Initialization" do
    #check that it is an instance of Bluray
    it "is an instance of the Bluray class" do
      expect(@bluray).to be_instance_of(Bluray)
    end
    #check that it is an extended from Item
    it "extends from the Item class" do
      expect(Bluray).to be < Item
    end
    
  end

  #check getters and setters
  describe "Accessors" do
    it "should be able to get and set name" do
      @bluray.name = "New Title"
      expect(@bluray.name).to eq("New Title")
    end
    it "should be able to get and set price" do
      # test setter
      @bluray.price = 10.00
      # test getter
      expect(@bluray.price).to eq(10.00)
    end
    it "should be able to get and set run_time" do
      @bluray.run_time = "3 hours"
      expect(@bluray.run_time).to eq("3 hours")
    end
    it "should be able to get and set director" do
      @bluray.director = "New Director"
      expect(@bluray.director).to eq("New Director")
    end
    it "should be able to get and set producer" do
      @bluray.producer = "New producer"
      expect(@bluray.producer).to eq("New producer")
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