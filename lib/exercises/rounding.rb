require_relative '../modules/process_data'

module Rounding
  include ProcessData

  def self.calculate data
    sanitized = ProcessData::Sanitize(data)
    sanitized.map! { |pair| (pair[0] / pair[1]).round }
  end

end
