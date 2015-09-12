class Chopper

#chop(int,array) retorna el tamanho total del array sin el int que se 
#pasa por parametro; si no hay elementos en el array retorna -1.
	
	
	def chop(int,array)
	    array.include?(int)?total_elements_within_int(int,array):-1
	end
	
	def total_elements_within_int(int,array)
	    array.size-array.count(int)
	end
	
	def sum(array)
		
		array.empty? ? 'vacio' : sum_of_elements(array)
	end

	def sum_of_elements(array)
	
		total = array.inject{|sum,each| sum + each}
		total ==1 ? 'uno' : 'cuatro'		
	end
	
	
end	
