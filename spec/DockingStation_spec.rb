require 'DockingStation'

describe DockingStation do
    it { is_expected.to respond_to(:release_bike) }
    it { is_expected.to respond_to(:dock).with(1).argument }
    # it { is_expected.to respond_to(:bike)} 
    
    it '#docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it '#returns docked bikes' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  
  describe '#dock' do
    it '#raises an error when full' do 
      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock Bike.new
      end
      expect {subject.dock Bike.new}.to raise_error('Cannot add another bike: Capacity full')
    end
  end

  describe '#release_bike' do
    it '#releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
     end

     it '#raises an error when there are no bike available' do 
      expect {subject.release_bike}.to raise_error('No bikes available')
    end
   end
end
