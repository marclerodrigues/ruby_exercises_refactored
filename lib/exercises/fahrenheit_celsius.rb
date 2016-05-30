require_relative '../modules/process_data'

module FahrenheitCelsius
  include ProcessData
  def self.convert data
    sanitized = ProcessData::SanitizeWithoutHead(data)
    sanitized.delete_at(0)
    sanitized.map! { |value| ((value - 32) * 5 / 9 ).round}
  end
end
