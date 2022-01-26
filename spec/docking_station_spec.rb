require "docking_station"
describe DockingStation do 
    describe "#release_bike" do
    # it "should respond to release_bike" do
    #     docking_station = DockingStation.new
    #     expect(docking_station).to respond_to(:release_bike)
    # end
    it { expect(DockingStation.new).to respond_to(:release_bike) }
    it { expect((DockingStation.new).release_bike).to be_instance_of(Bike)}
  end

  describe "#dock" do
    it { expect(DockingStation.new).to respond_to(:dock) }
  end
end 