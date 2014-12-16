require 'Ship'

describe Ship do 
  
  let(:empty_cell) {double :cell, hit?: false}
  let(:hit_cell) {double :cell, hit?: true}
  let(:empty_cells) { [empty_cell, empty_cell, empty_cell] }
  let(:one_hit_cell) { [hit_cell, empty_cell,  empty_cell]}

  let(:ship) {Ship.new empty_cells}
  let(:hit_ship) {Ship.new one_hit_cell}

  it 'should not be hit when created' do
    expect(ship.hit?).to eq false
  end

  it 'should know when it is hit' do
    expect(hit_ship.hit?).to eq true
  end

  it 'should know it\'s length upon creation' do
    expect(ship.length).to eq (3)
  end

  it 'should not sink after one hit' do
    expect(hit_ship.sunk?).to eq false
  end

end
