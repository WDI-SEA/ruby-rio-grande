require_relative 'spec_helper'
require_relative '../src/digital_item'

describe Digitalitem do
  before(:context) do
    # initialize item
        @digitalitem = Digitalitem.new('Media', 150.00, 'The album of music', 400)
  end

  # check initialization
    describe 'Initialization' do
    	  # check that it is an instance of Digitalitem
    it 'should be a Digitalitem' do
      expect(@digitalitem).to be_instance_of(Digitalitem)
    end
  # check that it is an extended from Item

    it 'should be an item' do
      expect(@digitalitem).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@digitalitem.name).to eq('Media')
    end

    it 'is assigned a price' do
      expect(@digitalitem.price).to eq(150.00)
    end

    it 'is assigned an description' do
      expect(@digitalitem.description).to eq('The album of music')
    end
    it 'is assigned an quantity' do
      expect(@digitalitem.quantity).to eq(400)
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @digitalitem.name = 'Music Music Music'
      expect(@digitalitem.name).to eq('Music Music Music')
    end

    it 'assigns and reads the price' do
      @digitalitem.price = 200.00
      expect(@digitalitem.price).to eq(200.00)
    end

    it 'assigns and reads the quantity' do
      @digitalitem.quantity = 80
      expect(@digitalitem.quantity).to eq(80)
    end

    it 'assigns and reads the description' do
      @digitalitem.description = 'This is music'
      expect(@digitalitem.description).to eq('This is music')
    end
  end
end
