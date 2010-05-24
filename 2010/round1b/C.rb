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

def fib(n)
  n < 2 ? n : fib(n-1) + fib(n-2)
end

cases = nli
(1..cases).each do |c|		
############ END OF COMMON STUFF
	resp = fib(nli) % 100003
  puts "Case ##{c}: #{resp}"
end

