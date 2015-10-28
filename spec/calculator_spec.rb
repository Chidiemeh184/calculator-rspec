require 'rspec'
require 'calculator'

describe Calculator do

	describe 'addition' do
		it 'returns an integer' do
			calc = Calculator.new
			actual = calc.add(2, 3)
			expect(actual).to be_a Integer
		end
	end
end