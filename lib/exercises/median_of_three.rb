require_relative '../modules/process_data'

module MedianOfThree
  include ProcessData

  def self.verify data
    sanitized = ProcessData::Sanitize(data)
    sanitized.each { |triplet| triplet.sort! }.collect {|triplet| triplet[1]}
  end
end
