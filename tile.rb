require_relative "board"
require_relative "game"

class Tile
attr_accessor :bomb, :flag, :empty
  def initialize
    @bomb = false
    @flag = false
    @empty = true
  end

  def bomb_populate(num)
    bomb_pos = []
    until bomb_pos.length == num
      rand_pos = []
      2.times { rand_pos << (0..8).to_a.random}
      unless bomb_pos.include?(rand_pos)
        bomb_toggle(rand_pos)
        bomb_pos << rand_pos
      end
    end
  end

  def bomb_toggle(pos)
    self[pos].bomb = true
    self[pos].empty = false
  end

  def reveal

  end

  def neighbors
  end

  def neighbor_bomb_count
  end
end
