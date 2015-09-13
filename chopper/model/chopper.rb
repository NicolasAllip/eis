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
		digits = total.to_s.split('').map { |digit| digit.to_i }
		array_numbers_string = ['cero','uno','dos','tres','cuatro','cinco','seis','siete','ocho','nueve']

		((digits.size).equal?3) ? 'demasiado grande' : number_of_digit_eq_one_or_two(digits,array_numbers_string)
	end

	def number_of_digit_eq_one_or_two(digits,array_numbers_string)
		
		string_number_of_digit_eq_one = array_numbers_string[digits.first]
		((digits.size).equal?1) ?  string_number_of_digit_eq_one : string_number_of_digit_eq_two(digits,array_numbers_string)
	end

	def string_number_of_digit_eq_two (digits,array_numbers_string)	
	    array_numbers_string[digits.first]+','+array_numbers_string[digits.at(1)]		
	end
end	
