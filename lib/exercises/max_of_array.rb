require_relative '../modules/process_data'

module MaxOfArray
  include ProcessData

  def self.verify data
    sanitized = ProcessData::SanitizeWithoutHead(data)
    max = sanitized.max.to_i
    min = sanitized.min.to_i
    results = [max, min]
  end
end
