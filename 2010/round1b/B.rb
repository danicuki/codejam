type = ARGV[0] || "mini"
problem = $0.split("/").last.gsub(".rb","")
@file = open("/Users/danicuki/Downloads/gcj/#{problem}-#{type}.in")

def nl 	
	@file.readline.chomp 
end
def nli 
	nl.to_i
end

def nla 
	nl.split
end

def nlai 
	nla.map {|x| x.to_i}
end

def nlaf 
	nla.map {|x| x.to_f}
end


cases = nli
(1..cases).each do |c|		
############ END OF COMMON STUFF
	n, k, b, t = nlai
	pos = nlaf
	vel = nlaf
	arrive = []
	for i in 0..(pos.size - 1)
		time_to_arrive = (b - pos[i]) / vel[i]
		arrive[i] = (time_to_arrive <= t) ? 1 : 0
	end
	if arrive.inject {|sum,i| sum = sum + i} < k
		puts "Case ##{c}: IMPOSSIBLE"
	else
		# puts arrive.join("-")
		@sw = 0
		@arrived = 0
		while (@arrived < k) do
			if arrive.last == 1
				@arrived = @arrived + 1
				arrive.pop
				# puts arrive.join("-")
				
			else
				i = arrive.size - 1
				while i >= 0 do
					if arrive[i] == 1
						arrive[i] = 0
						arrive[arrive.size-1] = 1
						@sw = @sw + arrive.size - 1 - i
						break;
					end
					i = i - 1
				end
			end
		end
		puts "Case ##{c}: #{@sw}"
	end
end