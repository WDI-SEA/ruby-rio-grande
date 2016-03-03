require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe Digital do 

  before(:context) do
    @item = Digital.new('A Christmas Story', 7)
  end

  #check initialization
  describe 'initialization' do

    it 'should be a digital item' do
      expect(@item).to be_instance_of(Digital)
    end

    it 'should be a item' do
      expect(@item).to be_kind_of(Item)
    end

    it 'should have a name' do
      expect(@item.name).to eq('A Christmas Story')
    end

    it 'should have a price' do
      expect(@item.price).to eq(7)
    end
  end

  describe 'selling and stocking' do

    it 'should remain quantity 1 after sell' do
      @item.sell(20)
      expect(@item.quantity).to eq(1)
    end

    it 'should remain quantity 1 after stock' do
      @item.stock(10)
      expect(@item.quantity).to eq(1)
    end
  end


  describe 'getters and setters' do

    it 'assigns and reads the name' do
      @item.name = 'Spongebob'
      expect(@item.name).to eq('Spongebob')
    end

    it 'assigns and reads the price' do
      @item.price = 2
      expect(@item.price).to eq(2)
    end

    it 'reads the quantity' do
      expect(@item.quantity).to eq(1)
    end
  end
end