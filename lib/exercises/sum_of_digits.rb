require_relative '../modules/process_data'

module SumOfDigits
  include ProcessData

  class Digits
    def transform triplet
      ((triplet[0] * triplet[1]) + triplet[2]).to_i.to_s.split("")
    end

    def convert triplet
      converted = transform triplet
      converted.map { |value| value.to_i}.reduce(:+)
    end
  end

  def self.calculate data
    sanitized = ProcessData::Sanitize(data)
    sanitized.map do |triplet|
      digits = Digits.new
      digits.convert(triplet)
    end
  end
end
