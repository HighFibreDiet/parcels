require 'parcels'
require 'rspec'

describe Parcel do
  describe 'initialize' do
    it 'is initialized with length, width, and height' do
      test_parcel = Parcel.new(5,6,7)
      test_parcel.should be_an_instance_of Parcel
    end
  end
  describe 'volume' do
    it 'puts the width times the length times the height' do
      test_parcel = Parcel.new(5,5,5)
      test_parcel.volume.should eq 125
    end
  end
  describe 'cost_to_ship' do
    it 'sets the distance property to the given value' do
      test_parcel = Parcel.new(5,5,5)
      test_parcel.cost_to_ship(50)
      test_parcel.distance.should eq 50
    end
    it 'calculates the cost to ship using the volume and the given distance' do
      test_parcel = Parcel.new(2,2,2)
      test_parcel.cost_to_ship(200).should eq 8.0
    end
  end

end
