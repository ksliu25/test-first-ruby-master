class Dictionary
	def initialize(entries = {})
		@entries = entries
	end
	
	def entries
		@entries
	end
	
	def add(entry)
		if entry.is_a?(String)
			@entries[entry] = nil
			else
			entry.each do |x, y|
				@entries[x] = y
			end
		end
	end
	
	def keywords
		keywords = []
		@entries.each do |key, value|
			keywords << key
		end
		keywords.sort
	end
	
	def include?(key)
		@entries.include?(key)
	end
	
	def find(string)
		found = {}
		@entries.each do |key, value|
			if /#{string}/.match(key)
				found[key] = value
			end
		end
		found
	end
	
	def printable
		printbox = []
		@entries.map do |key, value|
			printbox << %Q{[#{key}] "#{value}"}
		end
		printbox.sort.join("\n")
	end
	#beginningruby tells me \n is a newline... had to dig deep for that guy
		
	
	
	
  # TODO: your code goes here!
end
