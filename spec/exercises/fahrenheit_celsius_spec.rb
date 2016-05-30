require_relative '../spec_helper'

RSpec.describe FahrenheitCelsius do
  before :each do
    input_data = "5 495 353 168 -39 22"
    @results = FahrenheitCelsius::calculate(input_data)
  end

  it 'returns the correct result' do
    expect(@results).to eq([257, 178, 76, -39, -6])
  end
end
