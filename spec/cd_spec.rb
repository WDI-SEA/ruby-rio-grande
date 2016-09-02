require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    @cd = Cd.new('Stuff', 16.00, 10, 60, 'Bob')
  end

  describe 'Initialization' do
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end

    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('Stuff')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(16.00)
    end

    it 'is assigned tracks' do
      expect(@cd.pages).to eq(10)
    end


    it 'is assigned an artist' do
      expect(@cd.author).to eq('Bob')
    end

    it 'is assigned a runtime' do
      expect(@cd.runtime).to eq(60)
    end

  end

  describe 'Accessors' do
    it 'assigns and reads the name' do
      @cd.name = 'More Stuff'
      expect(@cd.name).to eq('More Stuff')
    end

    it 'assigns and reads the price' do
      @cd.price = 20.00
      expect(@v.price).to eq(20.00)
    end

    it 'assigns and reads the tracks' do
      @cd.tracks = 11
      expect(@cd.tracks).to eq(11)
    end

    it 'assigns and reads the artist' do
      @cd.author = 'Steve'
      expect(@cd.author).to eq('Steve')
    end

    it 'assigns and reads the runtime' do
      @cd.runtime = 61
      expect(@cd.runtime).to eq(61)
    end

  end

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
