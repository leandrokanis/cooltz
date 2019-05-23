require_relative "matrix"
require 'minitest/autorun'

class TestMatrix < MiniTest::Unit::TestCase
  def setup
    @data =  [
      [ 1, 0, 1, 1, 0, 1, 0 ],
      [ 0, 0, 1, 0, 1, 0, 0 ],
      [ 1, 1, 1, 0, 1, 0, 0 ],
      [ 0, 1, 1, 1, 1, 0, 1 ],
      [ 1, 1, 1, 1, 0, 0, 1 ],
      [ 0, 1, 1, 1, 0, 0, 0 ]
    ]
    @matrix = Matrix.new
  end

  def test_that_subsquare_area_size
    assert_equal(9, @matrix.sub_square_area(@data))
  end

end
