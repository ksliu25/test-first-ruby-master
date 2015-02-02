def reverser?(str)
	arr = str.split
	arr.map! {|x| x.reverse}
	reversed = arr.join(" ")
	reversed
end

#at this point I was like, "Oh, this clearly isn't working, why didn't I read the topics?"
#I don't need arguments, blocks are like single time use cooldudes
def reverser
	yield.split.map {|x| x.reverse}.join(" ")
end

#default arugments eh?.. Sneaky
def adder(num = 0)
	if num == 0
		yield + 1 
	else
		yield + num
	end
end

def repeater(num = 1)
	while num > 0
		yield
		num -= 1
	end
end


