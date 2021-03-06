require 'rspec'
# require_relative '../model/algun_archivo'
require_relative '../model/tablero'
require_relative '../model/submarino'
require_relative '../model/batalla_naval'

describe 'Tablero' do

  let(:tablero) { Tablero.new(5,5) }
  let(:submarino) { Submarino.new([1,2]) }
  let(:submarino1) { Submarino.new([2,3]) }

  it 'cantidad de filas' do
    expect(tablero.cantidad_filas).to eq 5
  end

  it 'cantidad de columnas' do
    expect(tablero.cantidad_columnas).to eq 5
  end

  it 'cantidad de barcos inicial es 0' do
    expect(tablero.cantidad_barcos).to eq 0
  end

  it 'cantidad de barcos es 2' do
  	tablero.ubicar_barco(submarino)
  	tablero.ubicar_barco(submarino1)
    expect(tablero.cantidad_barcos).to eq 2
  end  
end
