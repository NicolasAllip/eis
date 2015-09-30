class Jugador

	@elemento_actual
	@victorias = 0

	def peleo_contra(jugador)
	  "EMPATE"
	end
	
	def le_gana_a?(jugador)
	  self.elemento_actual().gana_contra?(jugador.elemento_actual())
	end

	def aumentar_victorias
	  @victorias += 1
	end
	
	def get_victorias()
	  @victorias
	end

	def elige(elemento)
	  @elemento_actual = elemento
	end

	def elemento_actual()
	  @elemento_actual
	end
end
