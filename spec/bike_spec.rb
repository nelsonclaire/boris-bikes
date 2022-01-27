require 'bike'

describe Bike do
    describe '#working?' do
    it { expect(Bike.new).to respond_to(:working?) }

    it "should return true if bike is working" do
    bike = Bike.new
    expect(bike.working?).to eq true
    end

    end

    it "User can report bike is broken" do
        bike = Bike.new
        bike.report_broken
        expect(bike).to be_broken
      end
end