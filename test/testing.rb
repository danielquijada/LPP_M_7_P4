require_relative "../lib/Complejo.rb"
require "test/unit"

class TestComplejo < Test::Unit::TestCase

  def test_simple
    assert_equal(Complejo.new(4,6),(Complejo.new(1,2)+Complejo.new(3,4)))
    assert_equal(Complejo.new(-2,-2),(Complejo.new(1,2)-Complejo.new(3,4)))
    assert_equal(Complejo.new(7,22),(Complejo.new(3,2)*Complejo.new(5,4)))
    assert_equal(Complejo.new(3,2),(Complejo.new(7,22)/Complejo.new(5,4)))
    assert_equal(Complejo.new(10,14),(Complejo.new(5,7)*2))
  end

end
