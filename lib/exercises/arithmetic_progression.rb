require_relative '../modules/process_data.rb'

module ArithmeticProgression
	include ProcessData
	class Sum
		def calculate_sum array
			first = array[0]
			step = array[1]
			n = array[2]
			last = first + (n -1) * step
			sum = n * (first+last) / 2
		end
	end

	def self.new(data)
		results = []
		sanitized = ProcessData::Sanitize(data)
		sanitized.each do |array|
			sum = Sum.new
			sum = sum.calculate_sum(array)
			results.push(sum)
		end
		results
	end

end
