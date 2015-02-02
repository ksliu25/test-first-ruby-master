def echo echo
	echo
end

def shout words
	words.upcase
end

def repeat (echo, num = 2)
	arr = []
	num.times do
	arr << echo
end
return arr.join(" ")
end

def start_of_word(str, num)
	return str[0, num]
end

def first_word(str)
	first = str.split(" ")
	return first[0]
end

#At first I thought I would need Regex because I realized after making the first iteration of titleize,
# it needed to only capitalize important words. 
def titleizefailure str
	each = str.split(" ")
	each.map! {|x| x.capitalize}
	each.join(" ")
end

#I'm sure there are cases where over should be capitalized but that's pretty subjective, huh?
#Like, what if it was like "It's Over". Kind of a depressing booktitle...
#Anyways this is pretty crude compared to the one I eventually found on the internet
def titleize str
	little_words = %w{and if or the over}
	split_str = str.split(" ")
	#shortcut for creating arrays found in beginningruby
	split_str.map! do |x|
		if x == split_str.first
			x.capitalize
			elsif little_words.include?(x)
				x
				else
					x.capitalize
				end
			end
			split_str.join(" ")
		end
#look at this guy with his sleek ternary operator, he thinks he's so cool... damn it.
def titleize_wow(name)
  lowercase_words = %w{a an the and but or for nor of}
  name.split.each_with_index.map{|x, index| lowercase_words.include?(x) && index > 0 ? x : x.capitalize }.join(" ")
end

		
			
			
	
	

	
	
