##### Status update 3/9/2019 - large number sets request

Initial testing of following features shows everything is working
-Generating an array of numbers from user inputs is working fine.
-Randomly output lotto numbers and powerball number is working fine
-Allowing the user to specify number of sets of outputs is also working.

However, testing by other devs in the group shows one major issue

If user specify a large quantity of sets it slowed down the computer and it might have crashed the computer. The program needs to be aborted by ^C command.

To prevent user accidently request a large quantity of number sets. I have update the code with an "if statement" to stop the process of producing the final output.

valid_set = true

while valid_set == true

    p "How many sets of numbers would you like?"
    set_number = gets.chomp.to_i
    
    if set_number > 50 or set_number <= 0
    p "too many sets or invalid"

   


    else 
    p "your lucky number list is"
    p set_number.times.map{random_pick(user_input_list)}
    p "your powerball is"
    p set_number.times.map{powerball_pick(user_input_list)}
    valid_set = false #or break
    end

end

This "if statement" warns the user that their request is too large or below zero. Then it will keep asking for the number of sets they need until it is within range and produce the lotto numbers.



##### Status update 5/9/2019 - saving output to text file

The last feature I built was for the program to save the outputs into a text file. The feature is working fine but if there was a lot of arrays the they would all be printed in one line. This is not a user friendly way to display the results. 

The way to over come this problem was to use the block method and print out each array in a new line.

The following code will print the main entry number sets in separate lines

```
text_file = File.open "save_your_lotto_number.txt", "a"



text_file.puts "your lucky number list is"

lucky_num.each do |lotto_num|

​    

​    text_file.puts lotto_num.to_s

end
```



The following code will print the powerballs in separate lines

```
text_file = File.open "save_your_lotto_number.txt", "a"



text_file.puts "your powerballs are"

powerball.each do |pball|

​    

​    text_file.puts pball.to_s



end

text_file.close
```

The update codes worked as expected and gives an easy to read format of the outputs.

