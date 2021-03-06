#Esta segunda Kata consiste en implementar el famoso juego Piedra-Papel-Tijera con algunas variaciones. No hace falta implementar toda una aplicación sino simplemente el modelo de objetos.
#La primer variación es Piedra-Papel-Tijera-Mono, a las reglas ya conocidas se agrega:

#* Mono gana a papel
#* Mono pierde con tijera
#* Mono empata con Piedra

#Por otro lado aparece el concepto de "partida", una partida es una competencia al mejor de tres rondas. O sea, un jugador para ganar una partida tiene que ganar 2 rondas (análogo a lo que ocurre en el tenis o el voley con los sets).

#A diferencia de la kata anterior, en este caso el diseño de las pruebas queda completamente a su cargo.
#A modo de guía les compartimos algunos ejemplos conceptuales.


require 'rspec' 
require_relative '../model/jugador'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/papel'

describe 'Jugador' do

	let(:jugador1) { Jugador.new }
	let(:jugador2) { Jugador.new }
	let(:piedra) { Piedra.new }
	let(:tijera) { Tijera.new }
	let(:papel) { Papel.new }

	it 'victorias de un jugador al iniciar es 0' do
	  expect(jugador1.victorias).to eq 0
	end
	it 'jugadores con mismos elementos es un empate' do
          jugador1.elige(piedra)
          jugador2.elige(piedra)
          expect(jugador1.peleo_contra(jugador2)).to eq "EMPATE"
	end

	it 'judador1 elige piedra, jugador2 elige tijera, ganador jugador1' do
	  jugador1.elige(piedra)
	  jugador2.elige(tijera)
	  expect(jugador1.le_gana_a?(jugador2)).to be_truthy
	end

	it 'judador1 elige tijera, jugador2 elige piedra, pierde jugador1' do
	  jugador1.elige(tijera)
	  jugador2.elige(piedra)
	  expect(jugador2.pierde_contra?(jugador1)).to be_falsey
	end

	it 'jugadores pelean gana jugador1 por ende aumenta en 1 las victorias' do
          jugador2.elige(piedra)
          jugador1.elige(papel)
          jugador1.peleo_contra(jugador2)
          expect(jugador1.victorias).to eq 1
	end	
end

