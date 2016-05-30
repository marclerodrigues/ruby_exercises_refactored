module FahrenheitCelsius
  class Fahrenheit
    def sanitize_data data
      data = data.split(" ")
      data.delete_at(0)
      data.map! { |value| value.to_f }
    end
  end
  def self.calculate data
    sanitized = Fahrenheit.new
    sanitized = sanitized.sanitize_data data
    sanitized.map! { |value| ((value - 32) * 5 / 9 ).round}
  end
end
