require_relative '../spec_helper'

RSpec.describe MaxOfArray do
  before :each do
    input_data = "1 2 3 4 5"
    @results = MaxOfArray::verify(input_data)
  end

  it 'returns the correct result' do
    expect(@results).to eq([5,1])
  end
end
