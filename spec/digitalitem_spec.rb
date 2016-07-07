require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe Digital_item do
  before(:context) do
    # initialize item
    @digital_item = Digital_item.new('Downloadable Item', 34.00)
  end

  # check initialization
  describe 'Initialization' do
  # check that it is an instance of Bluray
    it 'should be a digital_item' do
      expect(@digital_item).to be_instance_of(Digital_item)
    end


  # check that it is an extended from Item
    it 'should be an digital_item' do
      expect(@digital_item).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@digital_item.name).to eq('Downloadable Item')
    end

    it 'is assigned a price' do
      expect(@digital_item.price).to eq(34.00)
    end
  end

  # check getters and setters

  describe 'getters and setters' do
    it 'assigns and reads name' do
      @digital_item.name = 'Digi Item'
      expect(@digital_item.name).to eq('Digi Item')
    end

    it 'assigns and reads price' do
      @digital_item.price = 22.00
      expect(@digital_item.price).to eq(22.00)
    end
  end

  describe 'Methods' do
    it 'stock should be 1' do
      expect(@digital_item.quantity).to eq(1)
    end
    it 'Quantity does not decrease when sold' do
      result = @digital_item.sell 3
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
    end
    it 'Quantity should not increase on stock' do
      result = @digital_item.sell 2
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
    end
  end
end
