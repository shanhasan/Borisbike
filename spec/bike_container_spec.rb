require 'bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do
  
  let(:bike) {Bike.new}
  let(:holder) { ContainerHolder.new}

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

  # it "should provide the list of the avaliable bikes" do
  #   working_bike, broken_bike = bike, 
  #   # broken_bike.break!
  #   holder.dock(working_bike)
  #   holder.dock(broken_bike)
  #   expect(holder.avaliable_bikes).to eq([working_bike])
  # end


end