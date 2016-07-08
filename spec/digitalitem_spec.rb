# You are on your own... good luck.
# require_relative 'spec_helper'
# require './lib/
require_relative 'spec_helper'
require './lib/digital_item'

describe Digitalitem do
  before(:context) do

    @digitalitem = Digitalitem.new('Rocket League', 19.99)
  end

  describe 'initialization' do
    it 'should be an item' do
      expect(@digitalitem).to be_kind_of(Item)
    end

    it 'should be a digitalitem' do
      expect(@digitalitem).to be_instance_of(Digitalitem)
    end

    it 'is assigned a name' do
      expect(@digitalitem.name).to eq('Rocket League')
    end

    it 'is assigned a price' do
      expect(@digitalitem.price).to eq(19.99)
    end
  end

  describe 'Accessors' do
    it 'should be able to read and set quantity' do
      @digitalitem.quantity = 1
      expect(@digitalitem.quantity).to eq(1)
    end
  
    it 'should be able to get and set name' do
      @digitalitem.name = 'Rocket League'
      expect(@digitalitem.name).to eq('Rocket League')
    end
    
    it 'should be able to get and set price' do
      @digitalitem.price = 19.99
      expect(@digitalitem.price).to eq(19.99)
    end

    it 'should be able to get and set description' do
      expect(@digitalitem.description).to eq('')
      @digitalitem.description = '3v3 Rocket Soccer'
      expect(@digitalitem.description).to eq('3v3 Rocket Soccer')
    end
  end

  describe 'Methods' do
    it 'should be able to stock' do
      result = @digitalitem.stock 5
      expect(result).to eq(true)
      expect(@item.quantity).to eq(1)
    end
    it 'should not be able to sell more items than we have' do
      result = @item.sell 6
      expect(result).to eq(true)
      expect(@item.quantity).to eq(1)
    end
    it 'should be able to sell items and update quantity' do
      result = @item.sell 3
      expect(result).to eq(true)
      expect(@item.quantity).to eq(1)
    end
  end 
end
