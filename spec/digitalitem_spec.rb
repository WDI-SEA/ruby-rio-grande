require_relative 'spec_helper'
require_relative '../lib/digital_item.rb'

describe DigitalItem do
  before(:context) do
    # initialize item
    @digital_item = DigitalItem.new('harry potter', 15.00, 1)
  end

  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of DigitalItem
  # check getters and setters
  describe 'Initialization' do
    it 'is an instance of digital item' do
      expect(@digital_item).to be_instance_of(DigitalItem)
    end
    it 'is assigned a name' do
      expect(@digital_item.name).to eq('harry potter')
    end
    it 'is assigned a price' do
      expect(@digital_item.price).to eq(15.00)
    end

    it 'should be able to get quantity' do
      expect(@digital_item.quantity).to eq(1)
    end
  end
end
