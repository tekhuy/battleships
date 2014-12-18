class Cell

  attr_accessor :status

  def initialize 
    @status = "~" # ~ is water
  end

  def status
    @status
  end

  def position_ship!
    @status = "S" # S is ship
  end

  def receive_shot!
    @status == "~" ? @status = "." : @status = "X" # . is hitting water, X is hitting ship
  end

end