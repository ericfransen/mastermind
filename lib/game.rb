require_relative 'guess_validator'
require_relative 'sequence_generator'
require_relative 'sequence_matcher'

class Game

  attr_reader :turns, :guess_validator, :guesses, :answer, :win

  def initialize
    @turns = 0
    @start_time
    @end_time

    @answer   = SequenceGenerator.new.new_sequence
    @guesses  = []
    @win      = false
  end

  def turn
    @turn += 1
    if @turn == 9
      puts "Last chance!"
    end
  end

  def time_start
    if @turns == 1
      @start_time = Time.new
    end
  end

  def time_end
      @end_time = Time.new
  end


  def add_guess(input)
    puts "ACTUAL: #{answer.inspect}"
    guess = GuessValidator.new.validate(input)
    if guess
      @guesses << guess
      # Find out if the guess wins
      matcher = SequenceMatcher.new(input, answer)
      if matcher.match?
        puts "YOU WIN!"
        puts (@start_time - @end_time)
        @win = true
      else
        puts "You got #{matcher.color_match} color matches in #{matcher.position_match} correct positions."
        puts "Try again."
      end
    end
  end

end
