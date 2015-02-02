#Hey! I can use the nifty methods I used in Simon Says!!
#Well, hopefully make it better by now since I do these problems like
#one every two days... 
class Book
	attr_accessor :title
	
  # TODO: your code goes here!
  def title=(title)
	  little_words = %w{a an and if in or of over the}
	  split_str = title.split(" ")
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
			@title = split_str.join(" ")
		end
	end
