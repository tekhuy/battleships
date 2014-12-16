require 'Water'

describe Water do

  let(:water) {Water.new}


  it 'should be clear when created' do
      expect(water.hit?).to eq false
  end

  
  
end