puts "<<<WELCOME TO LUCKY NUMBER (Powerball)>>>"# make it look in a cool color

#create an array from user input for up to 20 number

user_input_list = []
number = true

until number == "done"
   puts "please enter your number
   Enter \"done\" when you enter all your numbers"
    number = gets.chomp # only enter number between 1 to 35
   
    if number == "done"
        puts "Here is your final list of number(s) 
    #{user_input_list}"
    else

    
    user_input_list.push number

    puts "your number(s) are #{user_input_list}"
    
    end

end

def random_pick(array)
    
    array.sample 5 #You can pass an integer argument to sample to get N unique elements from the array:
      
end

def powerball_pick(array)
    
    array.sample 1 #You can pass an integer argument to sample to get N unique elements from the array:
      
end

p "your lucky number list is"
p random_pick(user_input_list)
p "your powerball is"
p powerball_pick(user_input_list)
