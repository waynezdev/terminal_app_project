puts "<<<hi #{ARGV[0]} #{ARGV[1]} WELCOME TO LUCKY NUMBER (Powerball)>>>"# make it look in a cool color

ARGV .clear
#create an array from user input for up to 20 number

user_input_list = []
number = true

# def random_pick(array)
    
#     array.sample 7 #You can pass an integer argument to sample to get N unique elements from the array:
  
# end

# def powerball_pick(array)

# array.sample 1 #pick one powerball
  
# end


#ask user how many sets of numbers would they like.



until number == "done"
   puts "please enter your number
   Enter \"done\" when you enter all your numbers"
    number = gets.chomp # only enter number between 1 to 35
   
    if number == "done"
        puts "Here is your final list of number(s) 
    #{user_input_list}"

    elsif number.to_i > 35 || number.to_i <=0
        p "your number is invalid"
        next
    

    else

    
    user_input_list.push number

    puts "your number(s) are #{user_input_list}"
    
    end
end






def random_pick(array)
    
    array.sample 7 #You can pass an integer argument to sample to get N unique elements from the array:
      
end

def powerball_pick(array)
    
    array.sample 1 #pick one powerball
      
end




valid_set = true

while valid_set == true

    p "How many sets of numbers would you like?"
    set_number = gets.chomp.to_i

    if set_number > 5 or set_number <= 0
    p "too many sets or invalid"

   
    else 
    p "your lucky number list is"
    p set_number.times.map{random_pick(user_input_list)}
    p "your powerball is"
    p set_number.times.map{powerball_pick(user_input_list)}
    valid_set = false #or break
    end

end

