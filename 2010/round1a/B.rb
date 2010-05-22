@file = open("/Users/danicuki/Downloads/gcj/B-mini.in")
# @file = open("/Users/danicuki/Downloads/B-small.in")
# @file = open("/Users/danicuki/Downloads/B-large.in")

def nl  
  @file.readline.chomp
end

def nli
  nl.to_i
end


cases = nli

cases.times do |c|
  d, i, m, n = nl.split.map {|x| x.to_i}
  array = nl.split.map {|x| x.to_i}
	
  puts "Case ##{c + 1}: #{array}"
end