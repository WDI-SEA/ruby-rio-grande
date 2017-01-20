require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe Digital_item do
  before(:context) do
    # initialize item
    @digital_item = Digital_item.new('iPhone', 500)
  end

  # check initialization
  describe 'Initialization' do
    it 'should be a digital item' do
      expect(@digital_item).to be_instance_of(Digital_item)
    end

    it 'should be an item' do
      expect(@digital_item).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@digital_item.name).to eq('iPhone')
    end

    it 'is assigned a price' do
      expect(@digital_item.price).to eq(500)
    end
  end

  # check getters and setters
  describe 'Accessors' do
    it 'assigns and reads the name' do
      @digital_item.name = 'Macbook Pro'
      expect(@digital_item.name).to eq('Macbook Pro')
    end

    it 'assigns and reads the price' do
      @digital_item.price = 2000
      expect(@digital_item.price).to eq(2000)
    end
  end

  #Methods
  describe 'Methods' do
    it 'should be able to stock' do
      result = @digital_item.stock 4
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
    end
    it 'should be able to sell items and update quantity' do
      result = @digital_item.sell 4
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
    end
  end
end
