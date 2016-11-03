def random_letter
	x = rand(0...27)
	letters = ['a','b','c','d','e','f','g','h',
		'i','j','k','l','m','n','o','p','q','r',
		's','t','u','v','w','z','y','z','_']
	letta = letters[x]
	return letta
end

def random_string(stringLength)
	x = 0
	string = ""
	while (x < stringLength)
		string = string + random_letter
		x = x + 1
	end
	return string
end

def monkeys(target, id)
	count = 0
	length = target.length
	string = random_string(length)
	count = count + 1
	#print "Running..."
	isfirst = true
	#thr = Thread.new{
	#  while true do
	#    print '.'
	#    sleep 1
	#  end
	#}
	while string != target
	string = random_string(length)
	count = count + 1
		#if isfirst == true
		#	thready = Thread.new{
		#	  while true do
		#	    sleep rand(50...100)
		#	    puts "The count for thread: #{id} is #{count}"
		#	  end
		#	}
		#end
	isfirst = false
	end
	loopcount = 0
	while loopcount < 9999999999999999999999999999
	puts "The final count for #{id} was #{count} tries"
	loopcount = loopcount + 1
	end
	thready.exit
end



test = 'doge_'
threads = []

x = 1
thr = Thread.new{
	  while true do
	    print '.'
	    sleep 1
	  end
}
while x < 500
	string = "@thr#{x}" 
	instance_variable_set(string,Thread.new{monkeys(test,string)})
	x = x + 1
	puts "Thread #{string} has been booted up"
end


monkeys(test,0)
