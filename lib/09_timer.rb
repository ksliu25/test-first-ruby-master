class Timer
	attr_accessor :seconds, :time_string
		
	def initialize(seconds = 0, time_string = "00:00:00")
		@seconds = seconds
		@time_string = time_string
	end
	
	def padded(integer)
		if integer < 10
			"0#{integer}"
			else
				"#{integer}"
			end
		end
	
	def time_string
		arr = []
		hh = @seconds / 3600
		mm = (@seconds % 3600) / 60
		ss = @seconds % 60
		hh, mm, ss = padded(hh), padded(mm), padded(ss)
		arr << hh
		arr << mm
		arr << ss
		@time_string = arr.join(":")
	end
end

