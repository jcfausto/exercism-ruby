require 'Prime'

class Raindrops
	VERSION = 1

	SOUNDS = Hash[3, "Pling", 5, "Plang", 7, "Plong"]

  #Ruby has a class called Prime that already provide the 
  #fatorization of a number
	def self.convert(number)
		prime_factors = Prime.prime_division(number).flatten.select { |num| [3,5,7].include?(num) }

		result = number.to_s

		unless prime_factors.empty? 
			result = ""
			prime_factors.each do |key|
				result += SOUNDS[key]
			end
		end

		result
	end
end