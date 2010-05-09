@file = open("/Users/danicuki/Desktop/x.txt")

def nl  
  @file.readline.chomp
end

def nli
  nl.to_i
end


cases = nli

cases.times do |c|
  r, k, n = nl.split.map {|x| x.to_i}
  line = nl.split.map {|x| x.to_i}
	sum = 0
  first_line = line.clone
  @result = 0
  # puts "CASE 1================"
  i = 0
  chunks = 0
  sent = true
  while i < r do
    # if (line == first_line && chunks != 0 && sent)
    #   #achou padrao
    #   @result = @result + @result * ((r / chunks) - 1)
    #   i = i + chunks * ((r / chunks) - 1)
    #   sent = false
    #   break if i == r
    # end
    turn = []
    @sum = 0
		puts i if i % 100000 == 0
		j = 0
    while true
      break if line[j].nil? or @sum + line[j] > k 
			@sum = @sum + line[j]
			j = j + 1
    end
		turn = line.shift(j)

    @result = @result + @sum
    line = line + turn
    i = i + 1
    chunks = chunks + 1
  end
  
  
  puts "Case ##{c + 1}: #{@result}"
end