class Cell

  def initialize 
    @status
    @ship = false
  end

  def contain_water
    @status = "~" # (~ is water)
  end

  def ship?
    @ship 
  end

  def hit!
    @Status = "." # (. is empty cell is hit)
  end

  def ship!
    @status = "S" # (S is ship in cell)
  end

end
