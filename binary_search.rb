def search(target , array , length = 0)
	puts "array"
	puts array
	length = array.length
	searches = 0

	midpoint = array[(length / 2)]
	midnumber = length / 2
	
	searches = searches + 1
	print "midpoint"
	puts midpoint
	print "target"
	puts target
	if midpoint == target
		puts "found it"
		puts midnumber
		return
	elsif midpoint < target 
		newarr = array[midnumber..length]
	elsif midpoint > target
		newarr = array[0..midnumber]
	end

	if (midpoint != target) && (length <= 1)
		puts "The number has not been found"
		return
	else
		search(target , newarr, array.length)
	end
end

def binary_search(target, array)
	length = array.length
	foundit = false
	max = length
	start = 0
	difference = (max + start)/2
	midnumber = array[difference]
	
	if midnumber == target
		print "found it"
		print midpoint
		foundit = true
		return foundit
	end

	while (midnumber != target && difference > 1)
		difference = (max - start)
		midnumber = array[ start + (difference/2)]
		if midnumber == target
			puts "found it  #{(start + (difference/2))}"
			foundit = true
			return foundit
		end
		if midnumber < target
			start = start + (difference/2)
		elsif midnumber > target
			max = start + (difference/2)
		else
			puts "error"
		end
	end 
	if foundit == false
		puts "number not found"
	end
	return foundit
end

def monkeys_and_typewriters(array)
	@counter = 0
	target = rand(0..999)
	result = binary_search(target,array)
	while result == false
		target = rand(0..999)
		result = binary_search(target, array)
		@counter = @counter + 1
		puts "counter #{@counter}"

		puts "iterate"
	end
	puts "The final count is  #{@counter}"
end



	x = 0
	y = 0
	limit = 999

	array = [1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
	while (y < limit)
		array[y] = x *rand(1..1000)
		y = y + 1
		x = x + 3
	end
	array.each do |variable|
		variable = variable 
		puts variable
	end
	puts array[251]
	monkeys_and_typewriters(array)
		
