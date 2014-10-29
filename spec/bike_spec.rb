require_relative '../lib/bike'

describe Bike do

 let(:bike) {Bike.new}

  it "is not broken when created" do
    expect(bike).not_to be_broken
  end

  it "can break" do
    bike.break!
    expect(bike).to be_broken
  end

  it "can be fixed" do
    bike.break!
    bike.fix!
    expect(bike).not_to be_broken
  end

  # it "is rented out" do
  #   bike.rented!
  #   expect(bike.avaliable).to be false
  #  end

  # it "is returned fine" do
  #   bike.Fine
  #   expect(bike.avaliable).to be true
  # end

  # it "is returned broken" do
  #   bike.Broken
  #   expect(bike.avaliable).to be false
  # end

end

#can break
#can be fixed
