class Ship

  def initialize(cells)
    @cells = cells
  end

  def hit?
    @cells.any? { |cell| cell.hit? }
  end

  def length
   @cells.length
  end

  def sunk?
    @cells.all? { |cell| cell.hit? }
  end


end