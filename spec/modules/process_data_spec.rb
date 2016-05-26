require 'rspec'
require_relative '../spec_helper.rb'

RSpec.describe ProcessData do
	describe '#Sanitize' do
		context 'single line' do
			before :each  do
				input_data = "6\n3 1 4 1 5 9"
				@sanitized = ProcessData::Sanitize(input_data)
			end
	
			it 'returns an array' do
				expect(@sanitized).to be_a(Array)
			end
		
			it 'return the correct array' do
				expect(@sanitized).to eq([3,1,4,1,5,9])
			end
		end

		context 'multiple lines' do
			before :each do
				input_data = "2\n8 0 96\n5 8 15"
				@sanitized = ProcessData::Sanitize(input_data)
			end
			
			it 'returns an array' do
				expect(@sanitized).to be_a(Array)
			end

			it 'returns the correct array' do
				expect(@sanitized).to eq([[8,0,96],[5,8,15]])
			end
		end
	end
end
