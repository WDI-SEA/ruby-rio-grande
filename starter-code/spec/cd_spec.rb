require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initialize item
    @cd = Cd.new('Revo', 10.00, 11, 'Walk Off the Earth', 55)
  end

  describe 'initialization' do
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end
    it "is assigned a name" do
      expect(@cd.name).to eq("Revo")
    end
    it "is assigned a price" do
      expect(@cd.price).to eq(10.00)
    end
    it "is assigned tracks" do
      expect(@cd.tracks).to eq(11)
    end
    it "is assigned artist" do
      expect(@cd.artist).to eq("Walk Off the Earth")
    end
    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end
    it 'weight should default to zero but can be changed' do
      expect(@cd.weight).to eq(0)
      @cd.weight = 2
      expect(@cd.weight).to eq(2)
    end
  end

  describe 'accessors' do
    it 'assigns and reads the name' do
      @cd.name = 'On the Rocks'
      expect(@cd.name).to eq('On the Rocks')
    end
    it 'price is read and changed' do
      @cd.price = 24.00
      expect(@cd.price).to eq(24.00)
    end
    it 'artist can be read and changed' do
      @cd.artist = 'Straight No Chaser'
      expect(@cd.artist).to eq('Straight No Chaser')
    end
  end

  describe 'method' do
    it 'should be able to stock' do
      result = @cd.stock 20
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(20)
    end
    it "can't oversell" do
      result = @cd.sell 21
      expect(result).to eq(false)
      expect(@cd.quantity).to eq(20)
    end
    it "can sell when there is enough inventory" do
      result = @cd.sell 12
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(8)
    end
    it "can be returned" do
      result = @cd.return 2
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(10)
    end
    it "has a shipping cost" do
      expect(@cd.shipping_price).to eq(2.4)
    end
  end
end
