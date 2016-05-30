require_relative '../modules/process_data'
module AverageOfArray
  include ProcessData
  def self.calculate (data)
    sanitized = ProcessData::Sanitize(data)
    results = []
    sanitized.each do |pair|
      total = pair.inject do |total, value|
        total += value unless value == 0
        total
      end
      results.push((total/(pair.count-1)).round)
    end
    results
  end
end
