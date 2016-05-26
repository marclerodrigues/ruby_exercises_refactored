require_relative '../modules/process_data.rb'

module ArrayChecksum 
	include ProcessData
	def self.new (data)
		sanitized = ProcessData::Sanitize(data)
		result = 0
		limit = 10000007
		for i in 0...sanitized.size
			result = ( result + sanitized[i] ) * 113
		end
		result % limit
	end
end
