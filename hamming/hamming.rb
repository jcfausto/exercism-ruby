class Hamming

	VERSION = 1

	def self.compute(strand1, strand2)
	
		  #only strands with equal lenght should apply
			raise ArgumentError.new("Not allowed to compute with different strand lenghts.") unless strand1.length == strand2.length
	
			(strand1.each_char.with_index.to_a - strand2.each_char.with_index.to_a).size
	
	end

end