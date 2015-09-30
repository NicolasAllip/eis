class Jugador

	def initialize
	  @elemento_actual
	  @victorias = 0
	end
	
	def peleo_contra(jugador)
	  if self.empata_con(jugador)
	    "EMPATE"
	  elsif self.le_gana_a?(jugador)
	    self.aumentar_victorias()
	  else
	    jugador.aumentar_victorias()
	  end
	end
	
	def empata_con(jugador)
          jugador.elemento_actual() == self.elemento_actual()  
	end

	def le_gana_a?(jugador)
	  self.elemento_actual().gana_contra?(jugador.elemento_actual())
	end
	
	def pierde_contra?(jugador)
	  self.elemento_actual().pierde_vs?(jugador.elemento_actual())
	end

	def aumentar_victorias
	  @victorias += 1
	end
	
	def victorias
	  @victorias
	end

	def elige(elemento)
	  @elemento_actual = elemento
	end

	def elemento_actual
	  @elemento_actual
	end
end
