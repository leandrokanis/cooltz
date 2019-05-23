require_relative "matrix"
require 'minitest/autorun'

class TestMatrix < MiniTest::Unit::TestCase
  def setup
    @matrix = [
      [ 1, 0, 1, 1, 0, 1, 0 ],
      [ 0, 0, 1, 0, 1, 0, 0 ],
      [ 1, 1, 1, 0, 1, 0, 0 ],
      [ 0, 1, 1, 1, 1, 0, 1 ],
      [ 1, 1, 1, 1, 0, 0, 1 ],
      [ 0, 1, 1, 1, 0, 0, 0 ]
    ]
  end

  def test_that_subsquare_area_size
    assert_equal count(@matrix), 9
  end

end
