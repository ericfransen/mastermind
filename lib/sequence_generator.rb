require_relative 'sequence'

class SequenceGenerator
  attr_reader :colors, :length

  def initialize(length, colors)
    @length = length
    @colors = colors
  end

  def generate
    code = []
    length.times do
      code << colors.shuffle[0]
    end
    code
  end
end

  # def beginner
  #   length = 4
  #   colors = [R,G,B,Y]
  # end
  #
  # def intermediate
  #   length = 5
  #   colors = [R,G,B,Y,O]
  # end
  #
  # def advanced
  #   length = 6
  #   colors = [R,G,B,Y,O,I]
  # end
