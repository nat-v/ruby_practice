loop do 
  puts "Enter your sentence in English:"
  sentence = gets.chomp

  if sentence.empty?
    puts "Oops, seems like you didn't enter any text. Please, try again."
    redo
  end

  words = sentence.split(" ")
  words.each do |w|
    w.chars.rotate!
    
  end
  puts words
end