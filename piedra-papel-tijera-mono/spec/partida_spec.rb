require 'rspec' 
require_relative '../model/partida'
require_relative '../model/jugador'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/papel'

describe 'Partida' do

	let(:jugador1) { Jugador.new }
	let(:jugador2) { Jugador.new }
	let(:partida)	{ Partida.new(jugador1,jugador2) }
	let(:piedra) { Piedra.new}

	it 'cantidad total de rondas de una partida' do
          expect(partida.cantidad_rondas).to eq 3
	end
end
