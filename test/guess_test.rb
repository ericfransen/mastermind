gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess'


class GuessTest < Minitest::Test

  def test_can_take_an_input
    skip
  end

  def test_it_disallows_too_few_letters
    guess = GuessTest.new("aaa")
    assert 3, guess.length
  #if less than 4 letters, puts not enough letters, go to get guess again
  end

  def test_it_disallows_too_many_letters
    skip
  #if more than 4 letters, puts too many letters, go to get guess again
  end

  def test_it_disallows_different_letters
    skip
  #if they use letters other than r, g, b, y
  end
end
