require_relative '../spec_helper'

RSpec.describe SumOfDigits do
  before :each do
    input_data = "3\n11 9 1\n14 90 232\n111 15 111"
    @results = SumOfDigits::calculate(input_data)
  end

  it 'returns the correct value' do
    expect(@results).to eq([1,16,21])
  end
end
