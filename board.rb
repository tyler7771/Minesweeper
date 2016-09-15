class Board
  attr_reader :grid
  def initialize(grid = Array.new(9) {Array.new(9) {"*"}})
    @grid = grid
  end

  def render
    puts "    #{(0...9).to_a.join(" ")}"
    puts "   ------------------"
    @grid.each_with_index do |row, idx|
      puts "#{idx} | #{row.join(" ")}"
    end
  end

  def [](pos)
    row, col = pos
    grid[row][col]
  end

  def []=(pos, val)
    grid[pos] = val
  end

  def bomb_populate(num)
    puts "Hello World!"
  end
end
