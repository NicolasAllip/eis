require 'rspec'
require_relative '../model/tablero'
require_relative '../model/crucero'
require_relative '../model/submarino'
require_relative '../model/batalla_naval'
# require_relative '../model/algun_archivo'

describe 'Crucero' do

  let(:crucero) { Crucero.new([1,2],"vertical") }
  let(:tablero) { Tablero.new(5,5) }
  let(:batalla_naval) { BatallaNaval.new }

  it 'crucero primer coordenada' do
  	tablero.agregar_barco(crucero)
    expect(crucero.primer_coordenada.first).to eq 1
    expect(crucero.primer_coordenada.last).to eq 2
  end

  it 'crucero segunda coordenada ' do
  	tablero.agregar_barco(crucero)
    expect(crucero.segunda_coordenada.first).to eq 1
    expect(crucero.segunda_coordenada.last).to eq 3
  end

  it 'verificar resultado, coordenada ya ocupada ' do
    @coordenada_1 = [1,2]
    @coordenada_2 = [1,1]

    batalla_naval.crear_y_ubicar_submarino(@coordenada_1)
    @resultado = batalla_naval.crear_y_ubicar_crucero(@coordenada_2,'vertical')
    @resultado == "coordenada ya ocupada"
  end
  
end