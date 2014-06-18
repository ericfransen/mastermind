gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sequence_generator'


class SequenceGeneratorTest < Minitest::Test
  def test_it_generates_four_colors
    # length   = 4
    # colors   = ["r","g","b","y"].sort
    sequence_generator = SequenceGenerator.new(4, ["r","g","b","y"])
    sequence = sequence_generator.generate

    assert_equal 4, sequence.length
    sequence.each do |color|
      assert sequence_generator.colors.include?(color)
    end
  end

  def test_it_can_generate_more_than_four_colors
    sequence_generator = SequenceGenerator.new(5, ["r","g","b","y","o"])
    sequence = sequence_generator.generate
    assert_equal 5, sequence.length

    sequence_generator = SequenceGenerator.new(6, ["r","g","b","y","o","i"])
    sequence = sequence_generator.generate
    assert_equal 6, sequence.length
  end

  def test_it_is_random
    skip
    sequence = SequenceGenerator.new(5, ["r","g","b","y","o"])
    sequence.generate
    refute []
  end


end
