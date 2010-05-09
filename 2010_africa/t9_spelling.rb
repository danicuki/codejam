#http://code.google.com/codejam/contest/dashboard?c=351101#s=p2

@file = open("/Users/daniel.cukier/Downloads/C-large-practice.in")

def nl  
  @file.readline.chomp
end

def nli
  nl.to_i
end

SYM = {:a => "2",    :b => "22", :c => "222", :d => "3", :e => "33", :f => "333", :g => "4", :h => "44", :i => "444",  
           :j => "5",    :k => "55", :l => "555", :m => "6", :n => "66", :o => "666", :p => "7", :q => "77", :r => "777", 
           :s => "7777", :t => "8", :u => "88", :v => "888", :w => "9", :x => "99", :y => "999", :z => "9999", :" " => "0"    
  }

cases = nli

cases.times do |c|
  message = ""
  line = nl
  # puts line
  letters = line.split("")
  letters.each_with_index do |l,i|
    space = ""
    symb = SYM[l.to_sym]
    if (i > 0)
      last_digit = SYM[letters[i - 1].to_sym][0..0]
      space = " " if last_digit == symb[0..0]
    end
    message = "#{message}#{space}#{symb}"
  end
  
  puts "Case ##{c + 1}: #{message}"
end