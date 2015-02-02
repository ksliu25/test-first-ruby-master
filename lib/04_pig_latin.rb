def translate(str)
	vowels = %w{a e i o u}
	arr = str.split(" ")
	arr.each do |x|
		if vowels.include?(x[0])
			x << "ay"
			elsif "qu".include?(x[0,2])
				x << "#{x[0,2]}" + "ay"
				x[0,2] = ""
			elsif
				"squ".include?(x[0,3])
				x << "#{x[0,3]}" + "ay"
				x [0,3] = ""
			else
				until vowels.include?x[0]
				x << "#{x[0]}"
				x[0] = ""
			end
			x << "ay"
		end
	end
	arr.join(" ")
end

p translate "square"