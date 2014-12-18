class Grid

  def populate_board
    letters = ("A".."J").to_a
    numbers = (1..10).to_a
    coords = Hash.new
    coords = letters.map {|letter| numbers.map {|number| puts "#{letter}#{number}"}}
  end

end