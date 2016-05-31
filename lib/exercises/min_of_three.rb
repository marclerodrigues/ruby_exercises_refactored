require_relative '../modules/process_data'

module MinOfThree
  include ProcessData

  def self.verify data
    sanitized = ProcessData::Sanitize(data)
    sanitized.collect { |triplet|  triplet.min }
  end

end
