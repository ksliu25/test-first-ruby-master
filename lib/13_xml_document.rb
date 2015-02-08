#I did some supplmental reading on http://rubylearning.com/satishtalim/ruby_method_missing.html
#but also learned most of it from a solution posted online.
#using an empty hash finally feels a little familiar to me and using each_pair makes a lot of sense.

class XmlDocument
	attr_accessor :xml
	
	def initialize
		
	end
	
	def method_missing(method_name, *args, &block)
		xml = ""
		attributes = args[0] || {}
		attributes == {} ? xml << "<#{method_name}/>" : xml <<  "<#{method_name}" 
		attributes.each_pair {|key, value| xml << " #{key}='#{value}'/>"}
		xml
	end
	
	
	
	
	
	
	
	
  # TODO: your code goes here!
end
