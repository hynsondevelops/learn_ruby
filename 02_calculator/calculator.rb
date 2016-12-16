#write your code here

def add(x, y)
	return (x + y);
end

def subtract(x, y)
	return (x - y);
end

def sum(x)
	sum = 0;
	for i in 0..(x.length - 1)
		sum = sum + x.at(i);
	end
	return sum;
end

def multiply(x)
	product = 1;
	for i in 0..(x.length - 1)
		product = product * x.at(i);
	end
	return product;
end

def power(x, y)
	return (x**y);
end

def factorial(x)
	factorial = 1; 
	for i in x.downto(2)
		factorial *= i;
	end
	return factorial;
end