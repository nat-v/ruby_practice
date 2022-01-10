def get_fruits_amount
  puts "Alright then, please tell me how many fruits are in the bowl?"

  begin
    fruits = Integer(gets.chomp)   
  rescue ArgumentError
    puts "Oops, seems like you entered a wrong number, I need and integer. Please, try again:"
    retry
  end

  puts "You have #{fruits / 2} apples, with which you can make #{fruits / 6} pie(s)!"

  puts "Do you want to try another amount of fruits? (Y/N)"
  continue = gets.chomp.downcase
  validate_input(continue)
end

def validate_input(input)
  if input == "y"
    get_fruits_amount
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