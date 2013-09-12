def wordChecker(testword)

words = []

File.open("/usr/share/dict/words") do |file|
	file.each do |line|
		words.push(line.chomp)

		

	end
end 

if words.include?(testword)
result = []

test1 = testword.split("").sort.join
words.each do |line|
test2 = line.split("").sort.join
	if (test1 == test2)
		result.push(line)
	end
end
result.delete(testword)
p result

else
	puts "This isn't a valid word."

end

end
puts "Enter word to check"
lolasd = gets.chomp
wordChecker(lolasd)