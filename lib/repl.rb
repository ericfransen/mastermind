# class REPL

  def title_screen
    puts "\n* * * Welcome to MASTERMIND * * *"
    puts "press:\n      P to play\n      I for instructions\n      Q to quit"
  end

  def get_input_title
    input_title = gets.strip.downcase
    if input_title == "p"
#get difficulty level, change: # of colors, # of spaces, # of turns
#GOTO GUESS VALIDATOR
    elsif input_title == "i"
      puts "instructions"
    elsif input_title == "q"
#EXIT program (use while not q [CLI])
    end
  end

  def play_game
  puts "I have a sequence of 4 elements made up of:\n(r)ed, (g)reen, (b)lue, and (y)ellow.\nWhat's your guess?"
  end

  def get_guess
    guess = gets.strip.downcase
  end





#if exact match
#puts "YOU WIN!\nYou beat the game in #{GAME::num_of_turns} turns in #{GAME::start_time - SEQUENCE_MATCHER::end_time}"

#elsif X number of turns and no exact match
#puts "You lose. Whomp, whomp, whomp.\nSecret Code was #{GUESSES::last}\nNew Game?"
#reset all to zero

#else #{GAME::turns} guess
#puts "You got X colors right and X in the right position"
#puts "You have guessed X times:"
#puts GUESSES (history)
#puts "What is your next guess?"
