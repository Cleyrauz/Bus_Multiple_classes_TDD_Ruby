
require("minitest/autorun")
require("minitest/rg")

require_relative("../bus")
require_relative("../person")
require_relative("../bus_stop")

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Airport")
    @person1 = Person.new("Maria", 29)
    @person2 = Person.new("Patricia", 35)
    @person3 = Person.new("Jose", 35)
    @bus_stop = BusStop.new("La Asuncion", 3)
  end

  def test_bus_has_a_route
    assert_equal(22, @bus.route_number)
  end

  def test_bus_has_a_destination
    assert_equal("Airport", @bus.destination)
  end

  def test_bus_can_drive
    assert_equal("Brum brum", @bus.bus_drive)
  end

  def test_how_many_passengers
    @bus.add_passenger(@person1)
    @bus.add_passenger(@person2)
    assert_equal(2, @bus.passengers_count)
  end

  def test_drop_off_passenger
    @bus.add_passenger(@person1)
    @bus.add_passenger(@person2)
    assert_equal(1, @bus.drop_off_passenger(@person2))
  end

  def test_remove_all_passengers
    assert_equal(0, @bus.remove_all_passengers)
  end

  def test_pick_up_from_bus_stop
    @bus.add_passenger(@person2)
    @bus.add_passenger(@person3)
    assert_equal(3, @bus.pick_up_from_bus_stop(@bus_stop))
  end

end
