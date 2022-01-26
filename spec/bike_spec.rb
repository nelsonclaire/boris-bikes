require 'bike'
describe Bike do
    describe '#working?' do
    it { expect(Bike.new).to respond_to(:working?) }
    it "should return true" do
    bike = Bike.new
    expect(bike.working?).to eq true
    end
    end
end