require "docking_station"
require "bike"

describe DockingStation do 

  describe "#release_bike" do
    # it "should respond to release_bike" do
    #     docking_station = DockingStation.new
    #     expect(docking_station).to respond_to(:release_bike)
    # end
    it { expect(DockingStation.new).to respond_to(:release_bike) }   

    it "will return error when calling 'release bike' method if there are no bikes available" do
        docking_station = DockingStation.new
        expect { docking_station.release_bike }.to raise_error("no bikes available")
    end  

    it "will release a bike if one exists" do
        docking_station = DockingStation.new
        docking_station.dock(Bike)
        expect(docking_station.release_bike).to be_an_instance_of(Bike)
    end 
  end

  describe "#dock" do
    it { expect(DockingStation.new).to respond_to(:dock) }

    it "will return error when calling 'dock bike' method if there is already a docked bike" do
      docking_station = DockingStation.new
      20.times { docking_station.dock(Bike) }
      # docking_station.dock(Bike)
      expect { docking_station.dock(Bike) }.to raise_error("maximum bikes already docked")
    end  

  end

end 