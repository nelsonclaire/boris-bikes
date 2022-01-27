require_relative "./bike.rb"

class DockingStation 
    
    attr_reader :bikes

    def initialize
        @bikes = []
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

    def full? 
        @bikes.count > 19
    end

    def empty? 
        @bikes.empty?
    end


end 