# PROCESS DATA MODULE
# CREATED BY: MARCLE RODRIGUES
# CREATED AT: MAY 26, 2016

module ProcessData
	def self.Sanitize(data)
		data = data.split("\n")
		data.delete_at(0)
		if data.size == 1
			data = data[0].split(" ")
			for i in 0...data.size
				data[i] = data[i].to_i
			end
		else
			for i in 0...data.size
				data[i] = data[i].split(" ")
				for n in 0...data[i].size
					data[i][n] = data[i][n].to_i
				end
			end
		end
		data
	end
end
