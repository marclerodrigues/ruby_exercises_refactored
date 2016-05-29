require_relative '../modules/process_data'

module BodyMassIndex
  include ProcessData
  class MassIndex
    def translate_value total
      bmi_total = ""
      if total >= 30
    		bmi_total = ("obese")
    	elsif total >= 25
    		bmi_total = ("over")
    	elsif total >= 18.5
    		bmi_total = ("normal")
    	else
    		bmi_total = ("under")
    	end
      bmi_total
    end
  end

  def self.new (data)
    results = []
    sanitized = ProcessData::Sanitize(data)
    sanitized.each do |values|
      total = values[0] / (values[1]**2)
      bmi = MassIndex.new
      results.push(bmi.translate_value(total))
    end
    results
  end

end
