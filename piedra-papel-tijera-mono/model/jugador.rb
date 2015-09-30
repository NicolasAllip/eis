class Jugador

	@elemento_actual
	@victorias = 0

	def peleo_contra(jugador)
			"EMPATE"
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