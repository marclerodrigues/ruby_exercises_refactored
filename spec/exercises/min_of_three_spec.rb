require_relative '../spec_helper'

RSpec.describe MinOfThree do
  before :each do
    input_data = "3\n7 3 5\n15 20 40\n300 550 137"
    @results = MinOfThree::verify(input_data)
  end

  it 'returns the correct value' do
    expect(@results).to eq([3, 15, 137])
  end
end
