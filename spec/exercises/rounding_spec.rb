require_relative '../spec_helper'

RSpec.describe Rounding do
  before :each do
    input_data = "3\n12 8\n11 -3\n400 5"
    @results = Rounding::calculate(input_data)
  end

  it 'returns the correct value' do
    expect(@results).to eq([2, -4, 80])
  end
end
