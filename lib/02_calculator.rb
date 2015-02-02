def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(arr)
	arr.inject(0) {|result, num| result + num}
end

def multiply(arr)
	arr.inject {|result, num| result * num}
end

def power(x, y)
	x**y
end

#Here's my weak effort without knowing recursion :(
def factorial num
	factorial = 1
	while num > 0
		factorial *= num
		num -= 1
	end
	return factorial
end

#Basecases and recursions are still out of my grasp to implement effectively, but this is Chris Pine's method!
def factorialrecursion num
	if num < 0
		nil
	end
	
	if num <= 1
		1
		else
			num * factorial(num - 1)
		end
	end
