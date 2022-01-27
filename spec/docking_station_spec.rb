require "docking_station"
require_relative "../lib/bike"

describe DockingStation do 

  it "create a new docking station with the capacity not equal to default" do
    docking_station = DockingStation.new(100)
    expect(docking_station.capacity).to eq 100
  end  

  it "create a new docking station with default capacity if no capacity passed" do
    docking_station = DockingStation.new()
    expect(docking_station.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end  

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

    # it "will return a bike when not calling a broken bike" do
    #     docking_station = DockingStation.new
    #     docking_station.dock(Bike)
    #     expect(Bike.working?).to eq true 
    # end

  end

  describe "#dock" do
    it { expect(DockingStation.new).to respond_to(:dock) }

    it "will return error when calling 'dock bike' method if there is already the maximum number of docked bikes" do
      docking_station = DockingStation.new
      docking_station.capacity.times { docking_station.dock(Bike) }
      expect { docking_station.dock(Bike) }.to raise_error("maximum bikes already docked")
    end
    
    # it "will take user feedback whether bike is working or not" do
    #   docking_station = DockingStation.new
    #   expect (Bike.working?).to eq false 
    # end

  end

end 