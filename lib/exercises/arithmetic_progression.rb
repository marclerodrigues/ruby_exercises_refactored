require_relative '../modules/process_data.rb'

module ArithmeticProgression
	include ProcessData
	def self.new(data)
		results = []
		sanitized = ProcessData::Sanitize(data)
		for i in 0...sanitized.size
			first = sanitized[i][0]
			step = sanitized[i][1]
			n = sanitized[i][2]
			last = first + (n-1) * step
			sum = n * (first+last) / 2
			results.push(sum)
		end
		results
	end
end
