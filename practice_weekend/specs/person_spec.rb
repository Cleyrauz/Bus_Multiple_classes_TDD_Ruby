
require("minitest/autorun")
require("minitest/rg")

require_relative("../person")

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("Maria", 29)
  end

  def test_person_has_name
    assert_equal("Maria", @person.name)
  end

  def test_person_has_age
    assert_equal(29, @person.age)
  end

end
