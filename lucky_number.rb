require 'colorize'
require 'artii'

puts "<<<hi #{ARGV[0]} #{ARGV[1]} WELCOME TO LUCKY NUMBER (Powerball)>>>"# make it look in a cool color


ARGV.clear

# Ensure that your features include the following language elements and concepts:
# - use of variables and the concept of variable scope
# - loops and conditional control structures
# - error handling


user_input_list = []
number = true


until number == "done"
   puts "please enter your number
   Enter \"done\" when you enter all your numbers".colorize (:red)
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





### Feature 1 ###
def random_pick(array)
    
    array.sample 7 #You can pass an integer argument to sample to get N unique elements from the array:
      
end

def powerball_pick(array)
    
    array.sample 1 #pick one powerball
      
end




### Feature 2 ###
valid_set = true

while valid_set == true

    p "How many sets of numbers would you like?"
    set_number = gets.chomp.to_i

    # to prevent users requesting too many sets of numbers
    if set_number > 50 or set_number <= 0
    p "too many sets or invalid"

   
    else 
    p "your lucky number list is"
    lucky_num = set_number.times.map{random_pick(user_input_list)}

    p lucky_num
    # set_number.times.map{random_pick(user_input_list)}
    
    p "your powerballs are"
    powerball = set_number.times.map{powerball_pick(user_input_list)}

    p powerball
    # set_number.times.map{powerball_pick(user_input_list)}
    valid_set = false #or break
    end

end


text_file = File.open "save_your_lotto_number.txt", "a"

text_file.puts "your lucky number list is"
lucky_num.each do |lotto_num|
    
    text_file.puts lotto_num.to_s
end
text_file.close

text_file = File.open "save_your_lotto_number.txt", "a"

text_file.puts "your powerballs are"
powerball.each do |pball|
    
    text_file.puts pball.to_s

end
text_file.close
# File.open("save_your_lotto_number.txt", "a") do |line|
#     line.puts "\n" + lucky_num.to_s + powerball.to_s

def print_in_ascii(input)
    a = Artii::Base.new
    puts(a.asciify(input))
 end
print_in_ascii("Good luck!")