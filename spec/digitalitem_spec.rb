# You are on your own... good luck.
require 'spec_helper'
require './lib/digital_item'

describe 'Digital Items' do
  before(:context) do
    # initialize item
    @dig1 = Digital_item.new('Never Gonna Give You Up', 3.99, 'Rick Astley', 6)
  end

  # check initialization
  describe 'Intialization' do
    # check that it is an instance of Digital_item
    it 'should be an instance of Digital_item' do
      expect(@dig1).to be_instance_of(Digital_item)
    end

    # check that it is a kind of Item
    it 'should be a kind of Item' do
      expect(@dig1).to be_kind_of(Item)
    end
  end

  # check getters and setters
  describe 'Accessors' do
    # check setting 'name', inherited from Item through super()
    it "should set 'name' to 'Never Gonna Give You Up'" do
      expect(@dig1.name).to eq('Never Gonna Give You Up')
    end

    # check setting 'price', inherited from Item through super()
    it "should set 'price' to '3.99'" do
      expect(@dig1.price).to eq(3.99)
    end

    # check setting 'artist'
    it "should set 'artist' to 'Rick Astley'" do
      expect(@dig1.artist).to eq('Rick Astley')
    end

    # check setting 'run_time'
    it "should set 'run_time' to '6'" do
      expect(@dig1.run_time).to eq(6)
    end
  end

  # check Methods
  describe 'Methods' do
    # check setting quantity - SHOULD NOT CHANGE
    it 'should NOT set quantity - quantity should be 1' do
      @dig1.quantity = 0 if respond_to? :quantity=
      expect(@dig1.quantity).to eq(1)
    end

    # check sell method (selling 100), recheck quantity
    before(:example) do
      @dig1.sell(100)
    end

    # checking quantity after selling 100 units
    it 'should return quantity as 1' do
      expect(@dig1.quantity).to eq(1)
    end
  end
end
