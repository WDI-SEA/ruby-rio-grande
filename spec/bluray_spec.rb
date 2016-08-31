require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item runtime director produceer
    @bluray = Bluray.new("Punisher: Warzone", 4.20, 42.00, "Ezra Pound", "John Doe")
  end

  # check initialization
  describe "initialization" do
    it "should be a bluray" do
      expect(@bluray).to be_instance_of(Bluray)
    end

    it "should be an item" do
      expect(@bluray).to be_kind_of(Item)
    end

    it "is assigned name" do
      expect(@bluray.name).to eq("Punisher: Warzone")
    end

    it "is assigned price" do
      expect(@bluray.price).to eq(4.20)
    end

    it "is assigned runtime" do
      expect(@bluray.run_time).to eq(42.00)
    end

    it "is assigned director" do
      expect(@bluray.director).to eq("Ezra Pound")
    end

    it "is assigned producer" do
      expect(@bluray.producer).to eq("John Doe")
    end
  end
  # check that it is an extended from Item
  # check that it is an instance of Bluray

  describe "Getters and setters" do
    it 'assigns and reads the name' do
      @bluray.name = 'Foodfight'
      expect(@bluray.name).to eq('Foodfight')
    end
    
    it 'assigns and reads price' do
      @bluray.price = 0.69
      expect(@bluray.price).to eq(0.69)
    end

    it 'assigns and reads runtime' do
      @bluray.run_time = 420
      expect(@bluray.run_time).to eq(420)
    end

    it 'assigns and reads director' do
      @bluray.director = "CHRIS CASSINAUGH"
      expect(@bluray.director).to eq("CHRIS CASSINAUGH")
    end

    it 'assigns and reads producer' do
      @bluray.producer = "GEORGE W BUSH"
      expect(@bluray.producer).to eq("GEORGE W BUSH")
    end

  end

  # check getters and setters


end
