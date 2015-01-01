class Cell

  attr_accessor :status

  def initialize 
    @status = "~" # ~ is water
    @hit = false
  end

  def status
    @status
  end

  def hit?
    @hit
  end

  def position_ship!
    @status = "S" # S is ship
  end

  def receive_shot!
    @hit = true
    @status == "~" ? @status = "." : @status = "X" # . is hitting water, X is hitting ship
  end

end