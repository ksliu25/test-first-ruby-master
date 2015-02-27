class RPNCalculator
	attr_accessor :calculator
	
	def initialize
		@calculator = []
	end
	
	def value
		@calculator[@calculator.length - 1]
	end
	
	
	def push(x)
		@calculator << x
	end
	
	def plus
		@calculator.length > 0 ? @calculator << (@calculator.pop + @calculator.pop) : fail("calculator is empty")
	end
	
	def minus
		@calculator.length > 0 ? @calculator << ((-1*(@calculator.pop)) + @calculator.pop) : fail("calculator is empty")
	end
	
	def divide
		denom = @calculator.pop
		@calculator.length > 0 ? @calculator << (@calculator.pop.to_f / denom) : fail("calculator is empty")
	end
	
	def times 
		@calculator.length > 0 ? @calculator << (@calculator.pop * @calculator.pop) : fail("calculator is empty")
	end
	
	def tokens(str)
		arr = str.split(" ")
		arr.map! do |str|
			if str == "*" || str == "+" || str == "-" || str == "/"
				str = str.to_sym
				else
					str.to_i
				end
			end
			arr
		end
		

	
  # TODO: your code goes here!
end
