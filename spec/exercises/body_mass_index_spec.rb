require_relative '../spec_helper'

RSpec.describe BodyMassIndex do
  before :each do
    input_data = "3\n80 1.73\n55 1.58\n49 1.91"
    @results = BodyMassIndex::calculate(input_data)
  end

  it 'returns the correct value' do
    expect(@results).to eq(['over', 'normal', 'under'])
  end
end
