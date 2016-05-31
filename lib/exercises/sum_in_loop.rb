require_relative '../modules/process_data'

module SumInLoop
  include ProcessData
  def self.calculate data
    sanitized = ProcessData::Sanitize(data)
    sanitized.reduce(:+)
  end
end
