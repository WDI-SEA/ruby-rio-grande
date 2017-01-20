# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe Digital_item do
  before(:context) do
 @digital_item = Digital_item.new('Sawyer', 9)
end

 describe 'Initialization' do
    it 'should be a digital_item' do
      expect(@digital_item).to be_instance_of(Digital_item)
    end

    it 'should be an item' do
      expect(@digital_item).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@digital_item.name).to eq('Sawyer')
    end

    it 'is assigned a price' do
      expect(@digital_item.price).to eq(9)
    end



end
end
