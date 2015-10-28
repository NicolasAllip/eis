require 'rspec'
# require_relative '../model/algun_archivo'

require_relative '../model/tablero'
require_relative '../model/submarino'

describe 'Submarino' do

  let(:submarino) { Submarino.new([1,2]) }

  it 'submarino x = 1' do
    expect(submarino.x).to eq 1
  end

  it 'submarino y = 2' do
    expect(submarino.y).to eq 2
  end  
end