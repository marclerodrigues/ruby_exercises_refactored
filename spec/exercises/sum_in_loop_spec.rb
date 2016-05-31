require_relative '../spec_helper'

RSpec.describe SumInLoop do
  before :each do
    input_data = "8\n10 20 30 40 5 6 7 8"
    @result = SumInLoop::calculate(input_data)
  end

  it 'returns the correct result' do
    expect(@result).to eq(126)
  end
end
