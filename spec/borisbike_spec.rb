require_relative '../lib/borisbike'

describe Bike do

 let(:bike) {Bike.new}

  it "is not broken when created" do
    expect(bike.broken?).to be false
  end

  it "can break" do
    bike.break!
    expect(bike.broken?).to be true
  end

  it "can be fixed" do
    bike.fix!
    expect(bike.broken?).to be false
  end

  it "is rented out" do
    bike.rented!
    expect(bike.avaliable).to be false
   end

  it "is returned fine" do
    bike.returned!
    expect(bike.avaliable).to be true
  end

end

#can break
#can be fixed
