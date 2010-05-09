@file = open("/Users/daniel.cukier/Downloads/B-large-practice.in")

def nl  
  @file.readline.chomp
end

def nli
  nl.to_i
end

cases = nli

cases.times do |c|
  rv = nl.split(" ").reverse.join(" ")
  puts "Case ##{c + 1}: #{rv}"
end