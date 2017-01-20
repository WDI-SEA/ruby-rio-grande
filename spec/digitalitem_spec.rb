require_relative 'spec_helper'
require_relative '../lib/digital_item'

# initialize item
describe DigitalItem do
  before(:context) do
    @mp3 = DigitalItem.new('Firework', 1)
  end

  # check initialization
  describe 'Initialization' do
    it 'is an instance of the DigitalItem class' do
      expect(@mp3).to be_instance_of(DigitalItem)
    end
  end



end