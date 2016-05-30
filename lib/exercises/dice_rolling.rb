require_relative '../modules/process_data'

module DiceRolling
  include ProcessData
  def self.calculate data
    sanitized = ProcessData::Sanitize(data)
    sanitized.map! { |value| ((value[0] * 6) + 1).floor }
  end
end
