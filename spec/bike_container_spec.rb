require 'bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do
  
  # let(:bike) {Bike.new}
  let(:holder) { ContainerHolder.new}
  let(:broken_bike) {double :bike, broken?: true}
  let(:bike) {double :bike, broken?: false}

  it "should accept a bike" do
    expect(holder.bike_count).to eq(0)
    holder.dock(bike)
    expect(holder.bike_count).to eq(1)
  end

  it "should release a bike" do
    holder.dock(bike)
    holder.release(bike)
    expect(holder.bike_count).to eq(0)
  end

  it "should know when it is full" do
    expect(holder).not_to be_full
    10.times {holder.dock(bike)}
    expect(holder).to be_full
  end

  it "should not accept a bike when it is full" do
    10.times {holder.dock(bike)}
    expect(lambda { holder.dock(bike) }).to raise_error(RuntimeError)
  end

  it "should provide the list of the avaliable bikes" do
    # broken_bike.break!
    holder.dock(bike)
    holder.dock(broken_bike)
    expect(holder.avaliable_bikes).to eq([bike])
  end

  it "will not release a bike when empty" do
    10.times {holder.release(bike)}
    expect(lambda { holder.release(bike) }).to raise_error(RuntimeError)
  end


end