
require("minitest/autorun")
require("minitest/rg")

require_relative("../bus_stop")
require_relative("../person")

class BusStopTest < MiniTest::Test

  def setup
    @bus_stop = BusStop.new("La Asuncion", 3)
    @person1 = Person.new("Maria", 29)
    @person2 = Person.new("Patricia", 35)
    @person3 = Person.new("Jose", 31)
  end

  def test_bus_stop_has_a_name
    assert_equal("La Asuncion", @bus_stop.name)
  end

  def test_add_person_to_queue
    @bus_stop.add_person(@person1)
    @bus_stop.add_person(@person2)
    @bus_stop.add_person(@person3)
    assert_equal(6, @bus_stop.get_queue_count)
  end

end
