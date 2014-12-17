class Ship

  attr_reader :size

  SHIPS = {battleship: 4, submarine: 3, destroyer: 3, aircraft_carrier: 5, patrol_boat: 2}

  def initialize size, name
    @size = size
    @name = name
    @floating = true
  end

  # def self.battleship
  #   self.new(4)
  # end

  # def self.submarine
  #   new 3
  # end

  # def self.destroyer
  #   new 3
  # end

  # def self.aircraft_carrier
  #   new 5
  # end

  # def self.patrol_boat
  #   new 2
  # end

  def self.method_missing name *args #this is meta ruby...
    return new SHIPS[name] if SHIPS[name]
    super
  end

end

#EAMPLES OF CODE

SUNK = Proc.new { |ship| ship.sunk? }

def game_over?
  @ships.all (&SUNK) 
end
  
def floating_ships
  @ships.reject (&SUNK)
end



