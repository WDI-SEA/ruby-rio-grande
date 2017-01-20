# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../lib/digitalItem'

describe Book do
  before(:context) do
    # initialize item
    @digitalItem = DigitalItem.new('Harry Potter', 15.00, 700, 'JK Rowling')
  end

  # check initialization
  describe 'Initialization' do
    it 'should be a book' do
      expect(@digitalItem).to be_instance_of(DigitalItem)
    end

    it 'should be an item' do
      expect(@digitalItem).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@digitalItem.name).to eq('Harry Potter')
    end

    it 'is assigned a quantity' do
      expect(@digitalItem.quantity).to eq(1)
    end

    
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @digitalItem.name = 'Paradise Lost'
      expect(@digitalItem.name).to eq('Paradise Lost')
    end

    it 'assigns and reads the quantity' do
      @digitalItem.quantity = 1
      expect(@digitalItem.quantity).to eq(1)
    end

   
  end
end
