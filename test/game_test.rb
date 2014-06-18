gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game'


class GameTest < Minitest::Test

  def test_it_exists
    assert Game.new
  end

  def test_turn_count_starts_at_zero
    game = Game.new
    assert_equal 0, game.count
  end

  def test_counting_number_of_turns
    game = Game.new
    game.turn
    assert_equal 1, game.count
    3.times {game.turn}
    assert_equal 4, game.count
  end

#


  #def test_it_keeps_timer
    def timer_starts_when_first_guess_entered
    skip
    game = Game.new
    game.turn
    assert_equal

    #1st turn is taken, it starts the time

  end

  def test_it_keeps_guess_history
    skip
  end

end
