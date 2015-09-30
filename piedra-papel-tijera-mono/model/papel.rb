class Papel 
	
	def gana_contra?(elemento)
	  elemento.pierde_contra_papel?()
	end

	def pierde_vs?(elemento)
	  elemento.gana_contra_papel?()
	end

	def gana_contra_mono?()
	  false
	end
	
	def gana_contra_piedra?()
	  true
	end
	
	def gana_contra_tijera?()
	  false
	end

	def pierde_contra_piedra?()
	  false
	end
	def pierde_contra_mono?()
	  true
	end
	def pierde_contra_tijera?()
	  true
	end

end
