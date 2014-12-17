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
    expect(cell.ship?).to eq false
    cell.ship!
    expect(cell.ship?).to eq true
    expect(cell.status).to eq "S"
  end 

  it 'should be able to be hit' do
    
  end


  it 'should take ship and be able to be hit' do
    cell.ship!
    expect(cell.hit!).to eq (".")
  end


  # it 'should know when it is hit' do
  #   expect(cell.hit?).t
  # end

end