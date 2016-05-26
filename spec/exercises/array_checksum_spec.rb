require 'rspec'
require_relative '../spec_helper.rb'

RSpec.describe ArrayChecksum do
	before :each do
		input_data = "25\n6 4786018 92 1 0 834694 785010275 9 3265 90 0 7 0 35797865 300809 81689533 5443 506 46776 52921 107898 4913 403487462 2890 7205397"
		@result = ArrayChecksum::new(input_data)
	end

	it 'returns the correct value' do
		expect(@result).to eq(3862714)
	end
end
