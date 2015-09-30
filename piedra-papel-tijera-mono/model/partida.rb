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

	def disminuir_cantidad_rondas
	  @cantidad_rondas -= 1
	end
	
	def set_cantidad_ronda(cantidad)
	  @cantidad_rondas = cantidad
	end

	def jueguen_ronda
	  if cantidad_rondas != 0
	    disminuir_cantidad_rondas
	    self.jugador1.peleo_contra(self.jugador2)
	  end
	end
	
	def jugador1
	  @jugador1
	end
	
	def jugador2
	  @jugador2
	end
end
