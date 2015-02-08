#I did some supplmental reading on http://rubylearning.com/satishtalim/ruby_method_missing.html
#but also learned most of it from a solution posted online.
#using an empty hash finally feels a little familiar to me and using each_pair makes a lot of sense.

class XmlDocument
	attr_accessor :xml
	
	def initialize(indent = false)
		@indent = indent
		@indent_level = 0
	end
	
	def method_missing(method_name, *args, &block)
		xml = ""
		attributes = args[0] || {}
		xml << ("  "*@indent_level) if @indent
		xml <<  "<#{method_name}" 
		attributes.each_pair {|key, value| xml << " #{key}='#{value}'"}
		
		if block
			xml << ">"
			@indent_level += 1
			xml << "\n" if @indent
			xml << yield
			@indent_level -= 1
			xml << ("  " * @indent_level) if @indent
			xml << "</#{method_name}>"
			xml << "\n" if @indent
			else
				xml << "/>"
				xml << "\n" if @indent
			end
			xml
		end
	
	
	
	
	
	
	
	
  # TODO: your code goes here!
end
