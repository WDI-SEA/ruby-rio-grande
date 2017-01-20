require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe Digital_item do
  before(:context) do
    # initialize item
    @digital_item = Digital_item.new('Name', 10)
  end

  describe 'Initialization' do
    it 'should be a digital_item' do
      expect(@digital_item).to be_instance_of(Digital_item)
    end
    it 'should be extended from item' do
      expect(@digital_item).to be_kind_of(Item)
    end
    it 'is assigned a price' do
      expect(@digital_item.price).to eq(10)
    end
    it 'is assigned a name' do
      expect(@digital_item.name).to eq('Name')
    end
  end

  describe 'Methods' do
    it 'digital item stock check should be 1' do
      result = @digital_item.stock 999999
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
    end
    it 'should be able to sell digital items but remain at 1' do
      result = @digital_item.sell 999999
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
    end
  end

end
