# PROCESS DATA MODULE
# CREATED BY: MARCLE RODRIGUES
# CREATED AT: MAY 26, 2016

module ProcessData
	def self.Sanitize(data)
		data = data.split("\n")
		data.delete_at(0)
		if data.size == 1
			data = data[0].split(" ")
			data.map! { |item| item.to_f }
		else
			data.map! do |item|
				item = item.split(" ")
				item.map! { |value| value.to_f }
			end
		end
		data
	end

	def self.SanitizeWithoutHead(data)
		data = data.split(" ")
		data.map! { |value| value.to_f }
	end
end
