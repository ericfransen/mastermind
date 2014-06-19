gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sequence_matcher'


class SequenceMatcherTest < Minitest::Test

  def test_it_is_an_exact_match
    assert SequenceMatcher.new("rrrr", "rrrr").match?
    refute SequenceMatcher.new("bbbb", "rrrr").match?
  end

  def test_it_matches_colors
    skip

    sequence = "rrrb" #SequenceGenerator.new

    assert_equal 1, guess.color_match

  end

  def test_it_matches_positions
  skip
  end
  
end
