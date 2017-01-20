require 'spec_helper.rb'
require './lib/digital_item.rb'
# You are on your own... good luck.
describe DigitalItem do
  before(:context) do
    @digital_item = DigitalItem.new('Infinite Jest', 148)
  end

  describe 'Initialization' do
    it 'Should be a kind of Item' do
      expect(@digital_item).to be_kind_of(Item)
    end
    it 'Should be an instance of DigitalItem' do
      expect(@digital_item).to be_instance_of(DigitalItem)
    end
    it 'Should have a name' do
      expect(@digital_item.name).to eq 'Infinite Jest'
    end
    it 'Should have a price' do
      expect(@digital_item.price).to eq 148
    end
    it 'Should have a quantity of 1' do
      expect(@digital_item.quantity).to eq 1
    end
  end

  describe 'Getters and Setters' do
    it 'Should assign and get a name' do
      @digital_item.name = 'Code'
      expect(@digital_item.name).to eq 'Code'
    end
    it 'Should assign and get a price' do
      @digital_item.price = 8.48
      expect(@digital_item.price).to eq 8.48
    end
    it 'Should be able to get the quantity' do
      expect(@digital_item.quantity).to eq 1
    end
  end

  describe 'Methods' do
    it 'Should be able to add stock but not change quantity' do
      result = @digital_item.stock 14
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
    end
    it 'Should be able to sell more items than in stock' do
      result = @digital_item.sell 15
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
    end
    it 'Should be able to sell items and not update quantity' do
      result = @digital_item.sell 13
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
    end
  end
end
