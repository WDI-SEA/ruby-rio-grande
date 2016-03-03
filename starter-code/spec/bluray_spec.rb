require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    #initialize item
    @bluray = Bluray.new("Speed", 2, 90, "Edward Snowden", "Jill Smith")
  end

  describe 'Initialization of Bluray complete' do
    it 'should be a bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end
    it "should be an item" do
      expect(@bluray).to be_kind_of(Item)
    end
    it "is assigned a name" do
      expect(@bluray.name).to eq("Speed")
    end
    it "is assigned a price" do
      expect(@bluray.price).to eq(2)
    end
    it "is assigned some director" do
      expect(@bluray.director).to eq("Edward Snowden")
    end
    it "is assigned an producer" do
      expect(@bluray.producer).to eq("Jill Smith")
    end
    it "is assigned a run time" do
      expect(@bluray.run_time).to eq(90)
    end
  end
  #check getters and setters
  describe 'Checking getters and setters' do
    it 'assigns and reads the name' do
      @bluray.name = 'Hackers'
      expect(@bluray.name).to eq('Hackers')
    end
    it 'assigns and reads the price' do
      @bluray.price = 100.00
      expect(@bluray.price).to eq(100.00)
    end
    it 'assigns and reads the director' do
      @bluray.director = "Bugs Bunny"
      expect(@bluray.director).to eq("Bugs Bunny")
    end
    it 'assigns and reads the producer' do
      @bluray.producer = "John Doe"
      expect(@bluray.producer).to eq("John Doe")
    end
    it 'assigns and reads the run_time' do
      @bluray.run_time = 50
      expect(@bluray.run_time).to eq(50)
    end
end
  #check that it is an extended from Item
  #check that it is an instance of Cd
  #check getters and setters

end
