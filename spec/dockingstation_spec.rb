require_relative '../lib/DockingStation'

describe DockingStation do
  
  let(:station) {DockingStation.new(:capacity => 123)}

  it "should allow setting default capacity on initialisation" do 
    expect(station.capacity).to eq(123)
  end
end
