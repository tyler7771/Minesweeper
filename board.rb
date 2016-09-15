class Board
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

end
