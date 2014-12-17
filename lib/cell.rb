class Cell

  attr_reader :status

  def initialize 
    @status = contain_water
    @contain_water = true
    @ship = false
    @miss = false
    @hit = false
  end

  def contain_water
    @status = "~" # (~ is water)
  end

  def ship?
    @ship 
  end

  def miss!
    @miss = true
    @status = "." # (. is empty cell is hit)
  end

  def ship!
    @ship = true
    @status = "S" # (S is ship in cell)
  end

  def hit!
    @hit = true
    @status = "X"
  end 

end
