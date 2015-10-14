require 'rspec'
# require_relative '../model/algun_archivo'
require_relative '../model/tablero'
require_relative '../model/submarino'
require_relative '../model/batalla_naval'

describe 'BatallaNaval' do

  let(:batalla_naval) { BatallaNaval.new(5,5) }
  let(:submarino) { Submarino.new(1,2) }
  let(:submarino1) { Submarino.new(2,3) }

  it 'cantidad de filas del tablero' do
    expect(batalla_naval.tablero.cantidad_filas).to eq 5
  end

  it 'cantidad de columnas del tablero' do
    expect(batalla_naval.tablero.cantidad_columnas).to eq 5
  end

  it 'verifico cantidad de barcos' do
    expect(batalla_naval.tablero.cantidad_barcos).to eq 0
  end

  it 'agrego barco y verifico cantidad' do
  	batalla_naval.crear_y_ubicar_submarino(4,5)
    expect(batalla_naval.tablero.cantidad_barcos).to eq 1
  end

  it 'verificar que el barco en la coordenada (1,2) es un submarino' do
    batalla_naval.tablero.agregar_barco(submarino)
    batalla_naval.tablero.agregar_barco(submarino1)
    expect(batalla_naval.devolver_barco(1,2)).to eq submarino
  end  
end