require 'Ship'

describe Ship do 
  
  let(:ship) {Ship.new}

  it 'should not be hit when created' do
    expect(ship.hit?).to eq false
  end

  it 'should know when it is hit' do
    ship.hit!
    expect(ship.hit?).to eq true
  end

  it 'should know its coordinates' do
  end

  it 'should know its length' do
  end

end
