require 'rspec'
# require_relative '../model/algun_archivo'
require_relative '../model/tablero'
require_relative '../model/submarino'
require_relative '../model/batalla_naval'

describe 'BatallaNaval' do

  let(:batalla_naval) { BatallaNaval.new }
  let(:submarino) { Submarino.new([1,2]) }
  let(:tablero) { Tablero.new(20,20) }

  it 'la cantidad de columnas del tablero sea igual que el tablero de la batalla naval' do
    expect(batalla_naval.tablero.cantidad_columnas).to eq tablero.cantidad_columnas
  end 

  it 'verificar que el barco en la coordenada (1,2) es un submarino' do
    batalla_naval.tablero.ubicar_barco(submarino)
    expect(batalla_naval.devolver_barco([1,2])).to eq submarino
  end

end