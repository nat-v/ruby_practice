CANVAS_AND_BRUSHES = 40
TAXES = 0.1
PAINT = 5

loop do 
  puts "How many colors will you need to create a new masterpiece?"
  begin
    colors_amount = Integer(gets.chomp)
  rescue ArgumentError
    puts "Oops, seems like you entered a wrong number, I need an integer number. Please, try again:"
    retry  
  end 

  colors_cost = colors_amount * PAINT
  taxes_cost = (CANVAS_AND_BRUSHES + colors_cost) * TAXES
  total_cost = taxes_cost + CANVAS_AND_BRUSHES + colors_cost

  puts "Alright, let's see... The canvas and brushes will cost #{CANVAS_AND_BRUSHES}, #{colors_amount} colors of paint will be 5 each, so for all colors you need to pay #{colors_cost}."
  puts "Almost forgot about the taxes! They will be #{taxes_cost.round}."
  puts "Total is #{total_cost.round}"

  puts "Do you want to try another amount of colors?(Y/N)"
  try_again = gets.chomp.downcase
  if try_again != "y"
    break
  end
end