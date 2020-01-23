require_relative 'Bike'

class DockingStation
    
    def initialize
    @bike_storage = []
    end
    
    def release_bike
      fail 'No bikes available' if @bike_storage.empty?
      @bike_storage.pop
    end

   def dock(bike)
      fail 'Cannot add another bike: Capacity full' if @bike_storage.count >= 20
      @bike_storage << bike
      return @bike_storage[0]
   end

end

