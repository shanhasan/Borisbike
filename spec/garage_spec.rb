require_relative '../lib/garage' 

describe Garage do
  
  let(:garage) {Garage.new}
  let(:broken_bike) {double :bike, broken?: true, fix!: false}
  let(:bike) {double :bike, broken?: false}

  it "will accept broken bikes from van" do
    expect(garage.bike_count).to eq(0)
    garage.dock(broken_bike)
    expect(garage.bike_count).to eq(1)
  end

  it "will fix the broken bike" do
    broken_bike.fix!
    expect(bike).to_not be_broken
  end

  it "will give fixed bikes to van" do
    # garage.dock(broken_bike)
    # bike.fix!
    garage.release(bike)
    expect(garage.bike_count).to raise_error(RuntimeError)
  end

end