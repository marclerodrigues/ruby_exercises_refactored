require_relative '../modules/process_data.rb'

module ArrayChecksum
	include ProcessData
	def self.new (data)
		sanitized = ProcessData::Sanitize(data)
		result = 0
		limit = 10000007
		sanitized.each { |value| result = (result + value) * 113 }
		result % limit
	end
end
