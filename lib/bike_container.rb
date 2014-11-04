module BikeContainer

  DEFAULT_CAPACITY = 10
  EMPTY_STATION = 0

  def bikes
    @bike ||= []
  end

  def capacity 
    @capacity ||= DEFAULT_CAPACITY
  end

  def empty
    @empty ||= EMPTY_STATION
  end

  def capacity=(value)
    @capacity = value
  end

  def bike_count
    bikes.count
  end

  def dock(bike)
    raise "Station is full" if full?
    bikes << bike
  end

  def release(bike)
    raise "Station is empty" if empty?
    bikes.delete(bike)
  end

  def full?
    bike_count == capacity
  end

  def empty?
    bike_count == empty
  end

  def avaliable_bikes
    bikes.reject {|bike| bike.broken? }
  end

  # def broken?
  #   @broken
  # end

  # def break!
  #   @broken = true
  # end

  # def fix!
  #   @broken = false
  # end
  
end
