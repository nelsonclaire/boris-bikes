require_relative "./bike.rb"

class DockingStation
    
    attr_accessor :capacity

    DEFAULT_CAPACITY = 20
    
    def initialize(capacity = DEFAULT_CAPACITY)
        @bikes = []
        @capacity = capacity
    end    
    
    def release_bike
        raise "no bikes available" if empty?
        Bike.new
    end

    def dock(bike)
        raise "maximum bikes already docked" if full?
        @bikes << bike
    end

    private

    attr_reader :bikes

    def full? 
        @bikes.count >= @capacity
    end

    def empty? 
        @bikes.empty?
    end
end 