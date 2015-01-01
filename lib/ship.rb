class Ship

  def initialize(size)
    @size = size
    @hits = 0
    @hit = false
  end

  def size
    @size
  end

  def hit!
    @hit = true
    @hits += 1 
  end

  def hits
    @hits
  end

  def floating?
    !sunk?
  end

  def sunk?
    hits == size
  end

  def self.aircraft_carrier
    new 5
  end

  def self.battleship
    new 4
  end

  def self.destroyer
    new 3
  end

  def self.submarine
    new 3
  end

  def self.patrol_boat
    new 2
  end

end