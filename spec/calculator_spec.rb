require 'rspec'
require 'calculator'

describe Calculator do

	describe 'addition' do
		it 'returns an integer' do
			calc = Calculator.new
			actual = calc.add(2, 3)
			expect(actual).to be_a Integer
		end
		
		it 'can add many numbers'do
			calc = Calculator.new
			actual = calc.add(1, 2 , 3, 4)
			expect(actual).to eq 10
		end
	end
	
	describe 'subtraction' do
	
		it 'return an integer' do
			calc = Calculator.new
			subtracted = calc.subtract(3, 2)
			expect(subtracted). to be_a Integer
		end
		
		it 'the order of operation should matter(not commutative)'do
			calc = Calculator.new
			answer1 = calc.subtract(3, 2)
			answer2 = calc.subtract(2, 3)
			temp = (answer1 == answer2)
			expect(temp).to be false
		end
		
		it 'subtracting zero should return the first integer'do
			calc = Calculator.new
			answer = calc.subtract(1, 0)
			expect(answer).to eq 1
		end
		
		it 'subtracting an integer from itself should return zero'do
			calc = Calculator.new
			answer = calc.subtract(1, 1)
			expect(answer). to eq 0
		end
		
		it 'should accept more than 2 numbers at a time'do
			calc = Calculator.new
			answer = calc.subtract(1, 2) + calc.subtract(4, 2)
			expect(answer).to eq 1
		end
	end
	
	describe 'multiplication'do
	
		it 'should return an integer'do
			calc = Calculator.new
			answer = calc.multiply(2, 3)
			expect(answer).to be_a Integer
		end
		
		it 'the order of operation should not matter (commutative)'do
			calc = Calculator.new
			answer1 = calc.multiply(2, 3)
			answer2 = calc.multiply(3, 2)
			expect(answer1==answer2).to be true
		end
		
		it'multiplying an integer by one should returnn the first integer' do
			calc = Calculator.new
			answer = calc.multiply(10, 1)
			expect(answer).to eq 10
		end
		
		it'multiplying an integer by zero should return zero'do
			calc = Calculator.new
			answer = calc.multiply(5, 0)
			expect(answer).to eq 0
		end
		
		it 'should accept more than 2 numbers at a time'do
			calc = 	Calculator.new
			answer =  calc.multiply(1, 2, 3, 4)
			expect(answer).to eq 24
		end
			
	end
	
	describe 'division'do
		
		it'should return an integer'do
			calc = Calculator.new
			answer = calc.divide(4, 2)
			expect(answer).to eq 2
		end
		
		it'the order of operation should matter(not commutative)'do
			calc = Calculator.new 
			answer1 = calc.divide(4, 2)
			answer2 = calc.divide(2, 4)
			expect(answer1 == answer2).to eq false
		end
		
		it 'dividing an integer by one should return the first integer'do
			calc = Calculator.new
			answer = calc.divide(3, 1)
			expect(answer).to eq 3
		end
		
		it 'dividing zero by an integer should return zero'do
			calc = Calculator.new
			answer = calc.divide(0, 8)
			expect(answer).to eq 0
		end
		
		it'dividing an integer by zero should raise an error'do
			calc = Calculator.new 
			answer = calc.divide(8, 0)
			expect(answer).to eq 0
		end
		
		it 'should accept more than 2 numbers at a time'do
			calc = Calculator.new
			answer =  calc.divide(20, 2, 2, 5)
			expect(answer).to eq 1
		end
	end
end