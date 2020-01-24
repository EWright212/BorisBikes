require_relative 'Bike'

class DockingStation
    
  def initialize
    @bike_storage = []
  end
    
  def release_bike
    fail 'No bikes available' if empty? == true
    @bike_storage.pop
  end
  
  def dock(bike)
    fail 'Cannot add another bike: Capacity full' if full? == true
    @bike_storage << bike
    @bike_storage[0]
  end

  private

  def full?
    @bike_storage.count >= 20 ? true : false
  end 

  def empty?
    @bike_storage.empty?
  end
end

