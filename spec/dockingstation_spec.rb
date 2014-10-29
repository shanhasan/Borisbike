require_relative '../lib/DockingStation'

describe DockingStation do
  
  it "should accept a bike" do
    bike = Bike.new
    station = DockingStation.new
    expect(station.bike_count).to eq(0)
    station.dock(bike)
    expect(station.bike_count).to eq(1)
  end

  it "should release a bike" do
  end

  it "should know when it is full" do
  end

  it "should not accept a bike when it is full" do
  end

  it "should provide the list of the avaliable bikes" do
  end

end