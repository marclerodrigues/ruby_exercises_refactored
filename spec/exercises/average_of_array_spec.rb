require_relative '../spec_helper'

RSpec.describe AverageOfArray do
  before :each do
    input_data = "3\n2 3 7 0\n20 10 0\n1 0"
    @results = AverageOfArray::new(input_data)
  end

  it 'returns the correct value' do
    expect(@results).to eq([4,15,1])
  end
end
