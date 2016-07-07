# You are on your own... good luck.
require 'spec_helper'
require './lib/digital_item'

describe Digital_item do
  before(:context) do
    @digital = Digital_item.new('Life of Pi', 29.00)
  end

  describe 'initialization' do
    it 'should be a digital item' do
      expect(@digital).to be_instance_of(Digital_item)
    end
  end

  describe 'instance of' do
    it 'should be an instance of item' do
      expect(@digital).to be_kind_of(Item)
    end

    it 'name should be "Life of Pi"' do
      expect(@digital.name).to eq('Life of Pi')
    end

    it 'price should be 29.00' do
      expect(@digital.price).to eq(29.00)
    end

    it 'quantity should equal 1' do
      expect(@digital.quantity).to eq(1)
    end
  end

  describe 'stock amount' do
    before(:context) do
      @digital.sell(1)
    end

    it 'quantity should stay as 1' do
      expect(@digital.quantity).to eq(1)
    end
  end

end
