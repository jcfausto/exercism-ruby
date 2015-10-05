class Complement
	VERSION = 1

	#Creating a hashtable to store key-value pairs to lookup.
	#the keys are DNA bases and the values are the corresponding RNA bases.
	DICTIONARY = Hash["A", "U", "C", "G", "G", "C", "T", "A"]
	
	#Regular expressions to validate the codons
	DNA_BASES_REGEX = Regexp.new("[^ACGT]+", Regexp::IGNORECASE)    
	
	RNA_BASES_REGEX = Regexp.new("[^ACGU]+", Regexp::IGNORECASE)

	def self.of_dna(dna)
    raise ArgumentError.new("Invalid DNA strand!") unless dna !~ DNA_BASES_REGEX

		#for each char in the strand I fetch the corresponding value from the dictionary.
		rna = dna.chars.map { |base| DICTIONARY.fetch(base) }.join
	end

  #Just the opposite. Here I look up for the key given a value since
  #in the dictionary, the value represents RNA bases.
	def self.of_rna(rna)
		raise ArgumentError.new("Invalid RNA strand!") unless rna !~ RNA_BASES_REGEX

		dna = rna.chars.map { |base| DICTIONARY.key(base) }.join
	end
end