class Calculator

	def add(*n1)
		n1.inject(:+)
	end
	
	def subtract(*n1)
		n1.inject(:-)
	end
	
	def multiply(*n1)
		n1.inject(:*)
	end
	
	def divide(*n1)
		begin
			n1.inject(:/)
		rescue ZeroDivisionError 
		0
		end
	end
end