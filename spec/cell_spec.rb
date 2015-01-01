require 'Cell'

describe Cell do

  let(:cell){Cell.new}
  let(:water){double :water}
  let(:ship){double :ship}

  it 'should contain water when created' do
    expect(cell.status).to eq ("~")
  end

  it 'should not be hit when created' do
    expect(cell.hit?).to eq false
  end

  it 'should be able to contain a ship' do
    cell.position_ship!
    expect(cell.status).to eq "S"
  end 

  it 'should be able to have miss status if shot at when empty' do
    cell.receive_shot!
    expect(cell.status).to eq "."
  end

  it 'should take ship and be able to be hit' do
    cell.position_ship!
    cell.receive_shot!
    expect(cell.status).to eq "X"
    expect(cell.hit?).to eq true
  end

end