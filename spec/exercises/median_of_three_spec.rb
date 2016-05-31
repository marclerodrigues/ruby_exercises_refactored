require_relative '../spec_helper'

RSpec.describe MedianOfThree do
  before :each do
    input_data = "3\n7 3 5\n15 20 40\n300 550 137"
    @results = MedianOfThree::verify(input_data)
  end

  it 'returns the correct result' do
    expect(@results).to eq([5, 20, 300])
  end
end
