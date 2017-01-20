require_relative 'spec_helper'
require_relative '../lib/digital_item.rb'

describe Digital_item do
  before(:context) do
    # initialize item
    @digital_item = Digital_item.new('Harry Potter', 15.00, 1)
  end

  # check initialization
  describe 'Initialization' do
    it 'should be a digital_item' do
      expect(@digital_item).to be_instance_of(Digital_item)
    end

    it 'should be an item' do
      expect(@digital_item).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@digital_item.name).to eq('Harry Potter')
    end

    it 'is assigned a price' do
      expect(@digital_item.price).to eq(15.00)
    end

    it 'is assigned a quantity' do
      expect(@digital_item.quantity).to eq(1)
    end
  end
end

