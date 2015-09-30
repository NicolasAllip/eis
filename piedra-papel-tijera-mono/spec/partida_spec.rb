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
	let(:papel) { Papel.new}
	it 'cantidad total de rondas de una partida' do
          expect(partida.cantidad_rondas).to eq 3
	end
	
	it 'cantidad de rondas disminuye en 1 al jugar' do
	  partida.jugador1.elige(piedra)
          partida.jugador2.elige(piedra)
          partida.jueguen_ronda
          expect(partida.cantidad_rondas).to eq 2 
	end

	it 'ganador' do
	  partida.jugador1.elige(piedra)
      	  partida.jugador2.elige(piedra)
          partida.jueguen_ronda
          partida.jugador1.elige(papel)
          partida.jugador2.elige(piedra)
          partida.jueguen_ronda
          partida.jugador1.elige(papel)
          partida.jugador2.elige(piedra)
          partida.jueguen_ronda
          expect(partida.resultado_partida).to eq jugador1
	end
end
