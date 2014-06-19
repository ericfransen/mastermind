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
    @turns += 1
    if @turns == 9
      puts "\n* * * * * * Last chance! * * * * * *"
    elseif @turns == 10
      @win = false
    end
  end

  def start_time
    if @turns == 1
      @start_time = Time.new
    end
  end

  def end_time
      @end_time = Time.new
  end

  def add_guess(input)
    # puts "ACTUAL: #{answer.inspect}"                     #########
    guess = GuessValidator.new.validate(input)
    if guess
      @guesses << guess
      turn
      start_time
      matcher = SequenceMatcher.new(input, answer)
      if matcher.match?
        puts "\n* * * * * * YOU WIN! * * * * * *"
        end_time
        puts "It took you #{@start_time} - #{@end_time}"
        @win = true
      else
        puts "\nTurn #{turns}"
        puts "You got #{matcher.color_match} color matches in #{matcher.position_match} correct positions."
        puts "Try again."
      end
    end
  end
end
