require_relative '../lib/van'

describe Van do

  let (:van) {Van.new}
  let (:bike) {double :bike, broken?: false}
  let (:broken_bike) {double :bike, broken?: true}

  it "will accept a broken bike from station" do
    expect(van.bike_count).to eq(0)
    van.dock(broken_bike)
    expect(van.bike_count).to eq(1)
  end

  it "will release a broken bike to garage" do
    van.dock(broken_bike)
    van.release(broken_bike)
    expect(van.bike_count).to eq(0)
  end

  it "will accept a fixed bike from garage" do
    expect(van.bike_count).to eq(0)
    van.dock(bike)
    expect(van.bike_count).to eq(1)
  end

  it "will release a fixed bike to station" do
    van.dock(bike)
    van.release(bike)
    expect(van.bike_count).to eq(0)
  end

  it "will know how many broken bikes it has on the way to garage" do
    van.dock(broken_bike)
    expect(van.bikes).to eq [broken_bike]
  end

  it "will know how many fixed bikes it has on the way to station" do
    van.dock(bike)
    expect(van.bikes).to eq [bike]
  end

end