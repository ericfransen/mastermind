class Game
  attr_reader :turns

  def initialize
    @turns = 0
    @start_time
    # @end_time
  end

  def turn
    @turn += 1
    if @turn = X
      puts "Last chance!"
  end

  def timer
    if @turn = 1
      @start_time = Time.new
    # if @count = 10
    #   @end_time = Time.new
  end

  def request_sequence
    # if turn <= 1
    #get sequence from SEQUENCEGENERATOR
  end

  #go to sequence matcher

end
