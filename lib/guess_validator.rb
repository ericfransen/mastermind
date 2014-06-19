require_relative "guess"

class GuessValidator

  def initialize
  end

  def validate(input)
    if input.chars.any?{|letter| !"rgyb".include?(letter)}
      puts "\nYour guess contains wrong letters. Try again."
    elsif input.length != 4
      puts "\nYour guess is not 4 letters. Try again."
    else
      Guess.new(input)
    end
  end
end
