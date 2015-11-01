require 'rspec'
# require_relative '../model/algun_archivo'

require_relative '../model/tablero'
require_relative '../model/crucero'
require_relative '../model/batalla_naval'

describe 'Crucero' do

  let(:crucero) { Crucero.new([2,1],'vertical') }
  let(:tablero) { Tablero.new(5,5) }
  let(:batalla_naval) { BatallaNaval.new }

  it 'crucero x = 1 y crucero y = 2' do
    expect(crucero.coordenada_inicial.first).to eq 2
    expect(crucero.coordenada_inicial.last).to eq 1
  end
end