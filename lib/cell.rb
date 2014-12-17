class Cell

  def initialize 
    @status = contain_water
    @contain_water = true
    @ship = false
    @hit = false
  end

  def contain_water
    @status = "~" # (~ is water)
  end

  def ship?
    @ship 
  end

  def status
    @status
  end

  def hit!
    @hit = true
    @status = "." # (. is empty cell is hit)
  end

  def ship!
    @ship = true
    @status = "S" # (S is ship in cell)
  end

end
