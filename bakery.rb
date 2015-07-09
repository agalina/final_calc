puts "Type in a phrase:"
string = gets.chomp.downcase

if string.include?("world")
  puts "You are talking about the world."
elsif string.include?("me") || ("i")
  puts "You are talking about yourself."
else
  puts "I don't know what you are talking about."
end