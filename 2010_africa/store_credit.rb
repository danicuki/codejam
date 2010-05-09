
class StoreCredit
	def initialize
		@input = open("store_credit.in")
		@cases = @input.readline.to_i
	end
	
	def nl
		@input.readline
	end
	
	def nli
		nl.to_i
	end
	
	def solve

		(1..@cases).each do |c|
			credit = nli
			items = nli
			prices = nl.chomp.split.map {|p| p.to_i}
			prices_selected = prices.select {|p| p < credit}
			sorted_prices = prices_selected.sort
			
			sorted_prices.each_with_index	do |fi, index|
				((index + 1)..(sorted_prices.size - 1)).each do |sii|
					if credit == fi + sorted_prices[sii]
						@fi = prices.find_index(fi) + 1
						@si = prices.find_index(sorted_prices[sii]) + 1
						break;
					end
				end
				break if @fi
			end
			
			if @fi == @si
				@si = nil
				prices.each_with_index do |p,index|
					@si = index + 1 if index + 1 != @fi && prices[@fi] == prices[index]
				end
			end
						
			if @fi > @si
				tmp = @fi
				@fi = @si
				@si = tmp
			end
			
			puts "Case ##{c}: #{@fi} #{@si}"
			@fi = @si = nil
		end

	end
end

StoreCredit.new.solve