class Piedra

	def gana_contra?(elemento)
 	  elemento.pierde_contra_piedra?()
	end

	def pierde_vs?(elemento)
	  elemento.gana_contra_piedra?()
	end

	def gana_contra_papel?()
	  false
	end

	def gana_contra_mono?()
	  false
	end

	def gana_contra_tijera?()
	  true
	end
	def pierde_contra_tijera?()
	  false
	end
	
	def pierde_contra_mono?()
	  false
	end
	
	def pierde_contra_papel?()
	  true
	end
end
