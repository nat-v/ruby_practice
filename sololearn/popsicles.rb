def get_number
  begin
    input = Integer(gets.chomp)
  rescue ArgumentError
    puts "Oops, seems like you entered a wrong number, I need an integer number. Please, try again:"
    retry  
  end
end

loop do
  puts "How many siblings do you have?"
  siblings = get_number()

  puts "How many popsicles are there in your box?"
  popsicles = get_number()

  print "You have #{popsicles} popsicles. "
  if popsicles % siblings == 0
    puts "You can give an even amount of popsicles to each sibling! Everyone will get #{popsicles / siblings} popsicle(s)."
  else 
    puts "Sshhh! Don't tell anyone about the popsicles, you should eat them yourself, there are not enough for your siblings anyway ;)"
  end

  puts "Do you want to try again?(Y/N)"
  try_again = gets.chomp.downcase
  if try_again != "y"
    break
  end
end