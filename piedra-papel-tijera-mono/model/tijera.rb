class Tijera

	def gana_contra?(elemento)
	  elemento.pierde_contra_tijera?()
	end

	def pierde_contra_piedra?()
	  true
	end
end
