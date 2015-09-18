class Chopper


# chop(int,array) return the index(that is represented by int), 
# inside the array. else return -1. 
# In both methods the array not contains negative number.
	
	def chop(number,array)
		array.include?(number)? find_index(number,array):-1
	end

	def find_index(number,array)
		array.index(number)
	end

# sum(array), returns the string corresponding to each digit of the number (the sum of all the numbers of the array)
# except the number of digits are greater than two

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
