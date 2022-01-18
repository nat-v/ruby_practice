loop do 
  puts "Enter your sentence in English:"
  sentence = gets.chomp

  if sentence.empty?
    puts "Oops, seems like you didn't enter any text. Please, try again."
    redo
  end

  words = sentence.split(" ").map { |w| w.chars.rotate!.join + "ay" }
  puts words.join(" ")
 
  puts "Do you want to try again?(Y/N)"
  try_again = gets.chomp.downcase
  if try_again != "y"
    break
  end
end