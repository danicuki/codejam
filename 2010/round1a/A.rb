type = ARGV[0] || "mini"
# @file = open("/Users/danicuki/Downloads/gcj/A-mini.in")
@file = open("/Users/danicuki/Downloads/gcj/A-#{type}.in")
# @file = open("/Users/danicuki/Downloads/gcj/A-large.in")

def nl  
  @file.readline.chomp
end

def nli
  nl.to_i
end


cases = nli

cases.times do |c|
  n, k = nl.split.map {|x| x.to_i}
  array = []
	array2 = []
	n.times	do |i|
		line = nl.gsub(".","")
		line = "."*(n - line.length) + line
		array << line.split("")
		array2 << line
	end
	# puts array2
	
	r = false
	b = false
	#horizontal
	array2.each do |line|
		r = true if line =~ /R{#{k}}/
		b = true if line =~ /B{#{k}}/
	end
	
	if !(b && r)
		#vertial
		strings = []
		for i in 0..(n - 1)
			strings[i] = ""
		end
		for i in 0..(n - 1)
			for j in 0..(n - 1)
				strings[i] << array[j][n - 1 - i]
			end
		end
		strings.each do |line|
			r = true if line =~ /R{#{k}}/
			b = true if line =~ /B{#{k}}/
		end
	
	#diagonal1
	n.times	do |i|
		string = ""
		string2 = ""
		string3 = ""
		string4 = ""
		sent = 0
		(i+1).times do |j|
			string = string + array[i-sent][j]
			string2 = string2 + array[n-1-(i-sent)][n-1-j]
			string3 = string3 + array[n-1-sent][i-sent]
			string4 = string4 + array[sent][n-1-i+sent]
			sent = sent + 1
		end
		# puts string4
		r = true if string =~ /R{#{k}}/
		b = true if string =~ /B{#{k}}/
		r = true if string2 =~ /R{#{k}}/
		b = true if string2 =~ /B{#{k}}/
		r = true if string3 =~ /R{#{k}}/
		b = true if string3 =~ /B{#{k}}/
		r = true if string4 =~ /R{#{k}}/
		b = true if string4 =~ /B{#{k}}/
		
	end	
	
	
	end
	string = "Neither"
	string = "Red" if r
	string = "Blue" if b
	string = "Both" if b && r
		
  puts "Case ##{c + 1}: #{string}"
end