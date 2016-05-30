require_relative '../spec_helper'

RSpec.describe DiceRolling do
  before :each do
    input_data = "6\n0.59558786964\n0.861037873663\n0.385597702116\n0.246237673331\n0.808033385314\n0.0544673665427"
    @results = DiceRolling::calculate(input_data)
  end

  it 'returns the correct result' do
    expect(@results).to eq([4, 6, 3, 2, 5, 1])
  end
end
