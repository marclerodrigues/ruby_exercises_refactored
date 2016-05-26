require 'rspec'
require_relative '../spec_helper'

RSpec.describe ArithmeticProgression do
	before :each do
		input_data = "2\n5 2 3\n3 0 10"
		@result = ArithmeticProgression::new(input_data)
	end

	it 'returns an array' do
		expect(@result).to be_a(Array)
	end

	it 'return the correct array' do
		expect(@result).to eq([21,30])
	end
end
