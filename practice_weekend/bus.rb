class Bus

attr_reader :route_number, :destination, :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def bus_drive
    return "Brum brum"
  end

  def add_passenger(new_passenger)
    @passengers.push(new_passenger)
  end

  def passengers_count
    @passengers.length
  end

  def drop_off_passenger(passenger)
    @passengers.delete(passenger)
    return @passengers.length
  end

  def remove_all_passengers
    @passengers.clear
    return @passengers.length
  end

  def pick_up_from_bus_stop(bus_stop)
    @passengers.push(bus_stop)
    return @passengers.length
  end


end
