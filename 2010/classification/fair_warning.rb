require 'mathn'

@file = open("/Users/danicuki/Downloads/B-large.in")

def nl  
  @file.readline.chomp
end

def nli
  nl.to_i
end


cases = nli

cases.times do |c|  
  numbers = nl.split.map{|x|x.to_i}
	numbers.delete_at(0)
	numbers.sort!
	@mdcs = []
	
	(1..(numbers.size-1)).each do |i|
		@mdcs << numbers[i] - numbers[i-1]
	end
	
	@mdc = @mdcs.max
	@mdc = @mdcs.inject {|mdc,n| mdc.gcd(n)}

	result = (numbers[0] / @mdc).to_i * @mdc + @mdc - numbers[0]
	result = 0 if numbers[0] % @mdc == 0
  puts "Case ##{c + 1}: #{result}"
end