playable
  X can run from terminal
  X prints opening screen
  X   can use 3 options: p i q
  first play functions
  X  lets you guess
    if guess correctly, tells win
      if incorrect, it moves onto next guess
        loop (ignore counting for now)
    skip end game

THEN
 tells me how many i guessed perfectly

 THEN
 counts my guesses and tells me how many it took when i win

 THEN
 it records start time and when I win tells how long it took

 THEN
 count chars in incorrect positions


def Game#play

 puts "Enter your guess: "
 guess = ""
 until valid_guess?(guess)
   guess = get guess
 end

 @valid_guesses << guess

 num_perfect = num_perfect(@sequence, guess)
 num_good    = num_good(@sequence, guess)

 if solved?(guess)
   puts "you win in #{valid_guesses.count} play again?"
   return gets == 'yes'
 else
   puts "perfect: #{num_perfect}"
   puts "Good: #{good}"
   play
 end
end
