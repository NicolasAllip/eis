require 'rspec'
# require_relative '../model/algun_archivo'
require_relative '../model/tablero'
require_relative '../model/submarino'
require_relative '../model/batalla_naval'
require_relative '../model/crucero'

describe 'BatallaNaval' do

  let(:batalla_naval) { BatallaNaval.new }
  let(:submarino) { Submarino.new([1,2]) }
  let(:submarino1) { Submarino.new([1,3]) }
  let(:crucero) { Crucero.new([2,3]) }
  let(:tablero) { Tablero.new(5,5) }

  it 'cantidad de filas del tablero' do
    expect(batalla_naval.tablero.cantidad_filas).to eq 20
  end

  it 'cantidad de columnas del tablero' do
    expect(batalla_naval.tablero.cantidad_columnas).to eq 20
  end

  it 'verifico cantidad de barcos' do
    expect(batalla_naval.tablero.cantidad_barcos).to eq 0
  end

  it 'agrego barco y verifico cantidad' do
  	batalla_naval.crear_y_ubicar_submarino([4,5])
    expect(batalla_naval.tablero.cantidad_barcos).to eq 1
  end

  it 'verificar que el barco en la coordenada (1,2) es un submarino' do
    batalla_naval.tablero.agregar_barco(submarino)
    batalla_naval.tablero.agregar_barco(submarino1)
    expect(batalla_naval.devolver_barco([1,2])).to eq submarino
  end
  
  it 'verificar que la coordenada (20,30) esta fuera de un tablero 5 x 5' do
    expect(batalla_naval.crear_y_ubicar_submarino([20,30])).to eq "Fuera del Tablero"
  end  
  
  it 'verificar que un disparo a la coordenada (5,2) da "Agua"' do
    @coordenada = [5,2]
    expect(batalla_naval.disparo(@coordenada)).to eq "Agua"
  end
  
  it 'verificar que un disparo a la coordenada (5,2) dania a una barco' do
    @coordenada = [5,2]
    batalla_naval.crear_y_ubicar_crucero([5,2],"Vertical")
    @barco_atacado = batalla_naval.devolver_barco(@coordenada)
    @barco_atacado.disparos_recibidos += 1
    expect(@barco_atacado.disparos_recibidos).to eq 1
    expect(@barco_atacado.estado).to eq "Esta daniado"
  end

  it 'verificar que un disparo a la coordenada (5,2) hundo a una barco tipo submarino' do
    @coordenada = [5,2]
    batalla_naval.crear_y_ubicar_submarino([5,2])
    @barco_atacado = batalla_naval.devolver_barco(@coordenada)
    @barco_atacado.disparos_recibidos += 1
    expect(@barco_atacado.disparos_recibidos).to eq 1
    expect(@barco_atacado.estado).to eq "Esta Hundido"
  end

end