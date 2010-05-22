@file = open("/Users/daniel.cukier/Downloads/A-mini.in")
@file = open("/Users/daniel.cukier/Downloads/A-small.in")
@file = open("/Users/daniel.cukier/Downloads/A-large.in")

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