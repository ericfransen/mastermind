gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess_validator'


class GuessValidatorTest < Minitest::Test

  def test_takes_an_input_from_repl
    skip
    input = Guess.new("a")
    assert_equal "a", input
  end

  def test_it_can_count
    guess = Guess.new("aaa")
    assert_equal 3, guess.length
  end

  def test_it_disallows_too_few_letters
    skip
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
