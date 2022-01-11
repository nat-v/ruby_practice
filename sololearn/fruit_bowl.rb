def get_fruit_amount
  puts "Alright then, please tell me how many fruit are in the bowl?"

  begin
    fruit = Integer(gets.chomp)
  rescue ArgumentError
    puts "Oops, seems like you entered a wrong number, I need an integer number. Please, try again:"
    retry  
  end

  puts "You have #{fruit / 2} apples, with which you can make #{fruit / 6} pie(s)!"

  puts "Do you want to try another amount of fruit? (Y/N)"
  continue = gets.chomp.downcase
  validate_input(continue)
end

def validate_input(input)
  if input == "y"
    get_fruit_amount
  else
    return
  end 
end

def main
  puts "Hi there! Do you want to know how many apple pies can you make? (Y/N)"
  answer = gets.chomp.downcase  
  validate_input(answer)
end

main()