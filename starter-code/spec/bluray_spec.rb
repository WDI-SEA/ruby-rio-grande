require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    #initialize item
    @bluray = Bluray.new("Speed", 2.00, 90, "Edward Snowden", "Jill Smith")
  end

  #check initialization
  describe 'initialization ' do
    it 'should be a cd' do
      expect(@bluray).to be_instance_of(Bluray)
    end
    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end
    it "is assigned a name" do
      expect(@bluray.name).to eq("Speed")
    end
    it "is assigned a price" do
      expect(@bluray.price).to eq(2.00)
    end
    it "is assigned director " do  
      expect(@bluray.director).to eq("Edward Snowden")
    end
    it "is assigned producer" do
      expect(@bluray.producer).to eq("Jill Smith")
    end
    it "is assigned runtime" do
      expect(@bluray.run_time).to eq(90)
    end
  end  
  #check getters and setters
    describe "getters and setters" do
    it 'assigns and reads name' do
      @bluray.name = "Hackers"
      expect(@bluray.name).to eq('Hackers')
    end
    it 'assigns and reads price' do
      @bluray.price = 12.00
      expect(@bluray.price).to eq(12.00)
    end
    it 'assigns and reads director' do
      @bluray.director = "Bugs Bunny"
      expect(@bluray.director).to eq("Bugs Bunny")
    end
    it 'assigns and reads producer' do
      @bluray.producer = "Justin Beiber"
      expect(@bluray.producer).to eq('Justin Beiber')
    end  
    it 'assigns and reads runtime' do
      @bluray.run_time = 10
      expect(@bluray.run_time).to eq(10)
    end      
  end

end
