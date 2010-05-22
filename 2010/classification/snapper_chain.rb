@file = open("/Users/daniel.cukier/Downloads/A-large.in")

def nl  
  @file.readline.chomp
end

def nli
  nl.to_i
end


cases = nli

cases.times do |c|
  snappers, snaps = nl.split.map {|x| x.to_i}
  
  out = (snaps + 1) % 2**snappers == 0 ? "ON" : "OFF" 
  puts "Case ##{c + 1}: #{out}"
end