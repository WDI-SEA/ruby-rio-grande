require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do 
  before(:context) do
    # initialize item
    @cd = Cd.new('Thriller', 16.99, 9, "Michael Jackson", 42)
  end

  # check initialization
  describe 'Initialization' do
    # check that it is an instance of Cd
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end
  # check that it is an extended from Item
    it 'should be an item' do 
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('Thriller')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(16.99)
    end

    it 'is assigned amount of tracks' do
      expect(@cd.tracks).to eq(9)
    end

    it 'is assigned a artist' do
      expect(@cd.artist).to eq('Michael Jackson')
    end

    it 'is assigned a run time' do
      expect(@cd.runtime).to eq(42)
    end

  end
  # check getters and setters
  describe "Getters and setters" do
    it "assigns and reads a name" do
      @cd.name = "Whale"
      expect(@cd.name).to eq "Whale"
    end

    it "assigns and reads a price" do
      @cd.price = 20
      expect(@cd.price).to eq 20
    end

    it "assigned and reads tracks" do
      @cd.tracks = 48
      expect(@cd.tracks).to eq 48
    end

    it "assigns and reads artist" do
      @cd.artist = "Pirates"
      expect(@cd.artist).to eq "Pirates"
    end

    it "assigns and reads runtime" do
      @cd.runtime = 200
      expect(@cd.runtime).to eq 200
    end
  end

  # check methods
  describe "Methods" do
    it "should be able to stock" do
      result = @cd.stock(5)
      expect(result).to eq(true)
      expect(@cd.quantity).to eq 5
    end
    it "should be able to sell" do
      result = @cd.sell(2)
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(3)
    end

    it "should not sell if no quantity" do
      result = @cd.sell(5)
      expect(result).to eq(false)
      expect(@cd.quantity).to eq(3)
    end
  end


end