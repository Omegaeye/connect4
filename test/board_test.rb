require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest < Minitest::Test

  def test_it_exist
    board = Board.new

    assert_instance_of Board, board
  end

  def test_render
    board = Board.new

    puts board.display
  end


end
