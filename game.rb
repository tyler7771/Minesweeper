require_relative 'board'
class MineSweeper
  attr_reader :board
  def initialize
    @board = Board.new
  end

end

if __FILE__ == $PROGRAM_NAME
  game = MineSweeper.new
  puts "How many bombs do you want?"
  game.board.bomb_populate(gets.chomp)
end
