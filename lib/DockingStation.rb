require_relative 'Bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  def initialize
    @bike_storage = []
    @capacity
  end

  def capacity(given_capacity = DEFAULT_CAPACITY)
      @capacity = given_capacity
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
    @bike_storage.count >= DEFAULT_CAPACITY
  end 

  def empty?
    @bike_storage.empty?
  end
end

