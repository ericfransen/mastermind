require_relative 'game'
require_relative 'guess'

class SequenceMatcher
  attr_accessor :guess, :answer

  def initialize(guess, answer)
    @answer = answer.code
    @guess  = guess.chars
  end

  def match?
    @answer == @guess
  end

  def color_match
    count    = 0
    sequence = @answer.dup

    guess.each do |letter|
      if sequence.include?(letter)
        count += 1
        sequence.delete_at(sequence.index(letter))
      end
    end
    count
  end

  def position_match
    count = 0

    4.times do |i|
      if guess[i] == answer[i]
        count += 1
      end
    end
    count
  end

end
