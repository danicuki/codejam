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

cases = nli
(1..cases).each do |c|
############ END OF COMMON STUFF
	@sum = 0
	exist, create = nlai
	directories = Hash.new
	exist.times do |i|
		array = nl.split("/")
		array.delete_at(0)
		node = directories
		array.each do |item|
			node[item] = Hash.new unless node[item]
			node = node[item]
		end
	end
	create.times do |i|
		array = nl.split("/")
		array.delete_at(0)
		node = directories
		array.each do |item|
			if !node[item]
				node[item] = Hash.new 
				@sum = @sum + 1
			end 
			node = node[item]
		end
		
	end

  puts "Case ##{c}: #{@sum}"
end