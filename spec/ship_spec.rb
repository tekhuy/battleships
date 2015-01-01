require 'Ship'

describe Ship do 

  let(:ship){Ship.new(1)}

  context 'on initialize' do
    
    it 'can create a ship with a size' do
      expect(ship.size).to eq 1
    end

  end

  it 'can be hit' do
    ship.hit!
    expect(ship.hits).to eq 1
  end

  it 'is floating' do
    expect(ship).to be_floating
  end

  it 'can be sunk' do
    ship.hit!
    expect(ship).to be_sunk
  end

  it 'can create an aircraft carrier' do
    acc = Ship.aircraft_carrier
    expect(acc.size).to eq 5
  end

  it 'can create a battleship' do
    bat = Ship.battleship
    expect(bat.size).to eq 4
  end

  it 'can create a destroyer' do
    des = Ship.destroyer
    expect(des.size).to eq 3
  end

  it 'can create a submarine' do
    sub = Ship.submarine
    expect(sub.size).to eq 3
  end

  it 'can create a patrol boat' do
    pat = Ship.patrol_boat
    expect(pat.size).to eq 2
  end

end
  
  # let(:empty_cell) {double :cell, hit?: false}
  # let(:hit_cell) {double :cell, hit?: true}
  # let(:empty_cells) { [empty_cell, empty_cell, empty_cell] }
  # let(:one_hit_cell) { [hit_cell, empty_cell,  empty_cell]}
  # let(:three_hit_cell) {[hit_cell, hit_cell, hit_cell]}

  # let(:ship) {Ship.new empty_cells}
  # let(:hit_ship) {Ship.new one_hit_cell}
  # let(:sunk_ship) {Ship.new three_hit_cell}