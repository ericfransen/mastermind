require_relative 'game'

class Mastermind
  def initialize
    @game = Game.new
  end

  def run
    title_screen
    handle_input_title
    until @game.win
      play_game(@game)
    end
  end

  def title_screen

    puts "\n* * * Welcome to MASTERMIND * * *"
  end

  def handle_input_title
    puts "press:\n      P to play\n      I for instructions\n      Q to quit"
    input_title = gets.strip.downcase
    if input_title == "p"
      play_game(@game)
    elsif input_title == "i"
      puts "Here's how to play: yadda yadda yadda\n   Ready?"
      play_game(@game)
    elsif input_title == "q"
      exit
    else
      puts "\n#{input_title} is not an option that I see,"
      handle_input_title
    end
  end

  def play_game(play_game)
    puts ""
    #puts "TURN #{GAME::turn }"

    puts "I have a sequence of 4 elements made up of:\n(r)ed, (g)reen, (b)lue, and (y)ellow.\nWhat's your guess?"
    @game.add_guess(get_guess)
  end

  def get_guess
    gets.strip.downcase
  end
end

mastermind = Mastermind.new
mastermind.run

#if exact match
#puts "YOU WIN!\nYou beat the game in #{guesses.size} turns in #{start_time - (Time.new)}"

#elsif X number of turns and no exact match
#puts "You lose. Whomp, whomp, whomp.\nSecret Code was #{answer}\nNew Game?"
#reset all to zero

#else #{GAME::turns} guess
#puts "You got X colors right and X in the right position"
#puts "You have guessed X times:"
#puts GUESSES (history)
#puts "What is your next guess?"
