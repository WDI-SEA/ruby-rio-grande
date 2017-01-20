# You are on your own... good luck.
require_relative 'spec_helper'
require './lib/digital_item'

describe Digital_item do
  before(:context) do
    #initialize item
    @digital_item = Digital_item.new('Rocket League', 19.99)
  end

  describe 'Initialize' do

    it 'should be a Digital_item' do
      expect(@digital_item).to be_instance_of(Digital_item)
    end

    it 'should be an item' do
      expect(@digital_item).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@digital_item.name).to eq('Rocket League')
    end

    it 'is assgned a price' do
      expect(@digital_item.price).to eq(19.99)
    end
  end

  describe 'getters setters' do

    it 'assigns and reads the name' do
      @digital_item.name = 'Rocket League'
      expect(@digital_item.name).to eq('Rocket League')
    end

    it 'assigns and reads the price' do
      @digital_item.price = 19.99
      expect(@digital_item.price).to eq(19.99)
    end
  end

  #check Methods
    describe 'Methods' do

      it 'should always have a quantity of 1' do
        expect(@digital_item.quantity).to eq(1)
      end

      it 'should be able to be sold without reducing the quantity' do
        result = @digital_item.sell(1)
        expect(result).to eq(true)
        expect(@digital_item.quantity).to eq(1)
      end
    end
end
