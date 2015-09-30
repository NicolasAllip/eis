require_relative '../model/jugador'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/papel'
require_relative '../model/mono'

class Partida

	def initialize(jugador1,jugador2)  
	  @cantidad_rondas = 3
	  @jugador1 = jugador1
	  @jugador2 = jugador2
	end

	def cantidad_rondas
	  @cantidad_rondas
	end

end
