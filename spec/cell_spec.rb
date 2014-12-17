require 'Cell'

describe Cell do

  let(:cell){Cell.new}
  let(:water){double :water}
  let(:ship){double :ship}

  it 'should contain water when created' do
    expect(cell.contain_water).to eq ("~")
  end

  it 'should not contain a ship when created' do
    expect(cell.ship?).to eq false
  end

   it 'should be able to contain a ship' do
    cell.ship!
    expect(cell.status).to eq "S"
  end 

  it 'should be able to have miss status when empty' do
    cell.miss!
    expect(cell.status).to eq "."
  end


  it 'should take ship and be able to be hit' do
    cell.ship!
    cell.miss!
    expect(cell.hit!).to eq "X"
  end

end