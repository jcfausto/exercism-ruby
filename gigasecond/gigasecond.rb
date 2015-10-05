class Gigasecond
	VERSION = 1

	BILLION_SECOND = 10**9

	def self.from(time) 
		time + BILLION_SECOND
	end
end