require 'Cell'

describe Cell do

  let(:cell){Cell.new}
  let(:water){double :water}

  it 'should contain water when created' do
    expect(cell.contain_water).to eq true

  end
end