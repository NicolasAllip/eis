class Tijera

	def gana_contra?(elemento)
	  elemento.pierde_contra_tijera?()
	end

	def pierde_vs?(elemento)
	  elemento.gana_contra_tijera?()
	end

	def gana_contra_mono?()
	  true
	end
	def gana_contra_papel?()
	  true
	end
	def gana_contra_piedra?()
	  false
	end

	def pierde_contra_piedra?()
	  true
	end
	def pierde_contra_mono?()
	  false
	end
	def pierde_contra_papel?()
	  false
	end
end
