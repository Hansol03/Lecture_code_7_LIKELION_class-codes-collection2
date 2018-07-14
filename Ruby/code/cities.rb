count=0
file = File.open("cities.txt", "r")
file.each_line do |line|
    line.split.each do |word|
      if word.downcase=="it"
        count+=1
      end 
    end
end

puts count 