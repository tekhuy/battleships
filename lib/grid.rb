class Grid

def initialize
  @grid
end


def populate_board
  letters = ("A".."J").to_a
  numbers = (1..10).to_a
  board = Hash.new
  coord = letters.map {|x| numbers.map {|y| board["#{x}#{y}"] = Cell.new}}
  coord
end



end


