require 'rspec'
# require_relative '../model/algun_archivo'

require_relative '../model/tablero'
require_relative '../model/submarino'
require_relative '../model/batalla_naval'

describe 'Submarino' do

  let(:submarino) { Submarino.new([1,2]) }
  let(:batalla_naval) { BatallaNaval.new }

  it 'submarino x = 1' do
    expect(submarino.coordenada.first).to eq 1
  end

  it 'submarino y = 2' do
    expect(submarino.coordenada.last).to eq 2
  end  

  it 'cantidad de posiciones ocupadas cuando agrego submarino' do
    batalla_naval.ubicar_barco(submarino)
    expect(batalla_naval.tablero.posiciones_ocupadas.size).to eq 1
  end  
end