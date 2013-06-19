# Excercise 4

# def is_movie_available_1(name)
# 	movies = ["Thor", "Captain America", "Hulk", "Iron Man"]
	
# 	if movies.include?(name)
# 		puts "Right"
# 	else
# 		puts "No, that's not being played"
# 	end
# end

# Exercise 5 removed the 0 out of 0100, 0400, 0600 to prevent wonky results
# def is_movie_available_2(name, time)
#     movie_timings = {
#         "Thor" => [100, 400, 600, 1200, 1400, 1830], 
#         "Captain America" => [400, 845, 1115, 1430, 1940, 2130, 2300],
#         "Hulk" => [ 1200, 1500, 1830, 2200],
#         "Iron Man" => [1315, 1645]
#     }
#     if movie_timings.has_key?(name) == false
#     	puts "Your movie is not showing"
#     elsif movie_timings.has_key?(name) == true && movie_timings[name].include?(time) == false
#     	puts "Your movie is showing but not at that time"
#     elsif movie_timings.has_key?(name) == true && movie_timings[name].include?(time) == true
#     	puts "Great, movie is showing and showing at the time you want."
#     else
#     	puts "Whatever"
#     end
# end

#Exercise 6
# def is_movie_available_3(name, time)
#     # TODO: Return the first movie timing that the user can go to for the given movie name
#     movie_timings = {
#         "Thor" => [100, 400, 600, 1200, 1400, 1830],
#         "Captain America" => [400, 845, 1115, 1430, 1940, 2130, 2300],
#         "Hulk" => [ 1200, 1500, 1830, 2200],
#         "Iron Man" => [1315, 1645]
#     }

#     while movie_timings.has_key?(name) == false
#       puts "Sorry that movie is not showing, please choose another"
#       name = gets.chomp
#     end  

#     puts "Good choice. #{name}'s first timing is #{movie_timings[name][0]}"
# end

#Exercise 7 NOT YET COMPLETED
# def is_movie_available_4(time)
#     movie_timings = {
#         "Thor" => [100, 400, 600, 1200, 1400, 1830],
#         "Captain America" => [400, 845, 1115, 1430, 1940, 2130, 2300],
#         "Hulk" => [ 1200, 1500, 1830, 2200],
#         "Iron Man" => [1315, 1645]
#     }

#     movies = Hash.new {|h,k| h[k]=[]}
   
#     movie_timings.each do |key, value|
#         if value.include?(time)         
#             movies[key] << value         
#         end
#     end
#     return movies
# end




#Exercise 9
# def guess_number_1
#   random_number = rand(2)
#   puts "Guess a number any number"
#   answer = gets.chomp.to_i
#   if answer == random_number
#     puts "You are right!"
#   else
#     puts "You're wrong!"
#   end
# end

#Exercise 10
# def guess_number_2
#   random_number = rand(3)
#   puts "Guess a number any number" 
#   answer = gets.chomp.to_i
#   until answer == random_number
#       puts "Try again"
#       answer = gets.chomp.to_i
#   end
#   puts "That's right"
# end

#Exercise 11 Part 1
# def guess_number_3
#   random_number = rand(3)
#   puts "Guess a number any number" 
#   answer = gets.chomp.to_i
#   times = 1
#   until answer == random_number
#       puts "Try again"
#       answer = gets.chomp.to_i
#       times += 1
#   end
#   puts "That's right"
#   puts "You guessed #{times} times."
# end

# Exercise 11 Part 2
# def guess_number_4
#   random_number = rand(20)
#   puts "Guess a number any number"
#   answer = gets.chomp.to_i
#   until answer == random_number
  
#       if answer > random_number
#         puts "It's lower, try again"
#         answer = gets.chomp.to_i
#       else 
#         puts "IT's higher, try again"
#         answer = gets.chomp.to_i 
#       end
#   end
#   puts "That's right"
# end

#Exercise 12 Note: I preferred using two if statements in a row instead of an elsif. This made things look clearer.
# def guess_number_5
#   random_number=50

#   puts "Guess a number any number:"
#   answer1 = gets.chomp.to_i

#     if answer1 == random_number
#       puts "You guessed right on the first try! Way to go!" 
#     else
#       puts "Try again:"
#       answer2=gets.chomp.to_i

#         until answer2 == random_number
#             if (random_number - answer2).abs <= (random_number - answer1).abs
#               answer1 = answer2
#               puts "Getting Warmer, Try Another Number:"
#               answer2 = gets.chomp.to_i
#             end

#             if (random_number - answer2).abs >= (random_number - answer1).abs
#               answer1 = answer2
#               puts "Getting Colder, Try Another Number:"
#               answer2 = gets.chomp.to_i
#             end
#         end  
#         puts "Good Job!"
#     end  
    
# end 



# number4, number 5, 9, 10, 13, 14, 15.. 16 would be an extension if have time, 20 is first project - important to get to




# Exercise 13
# def nag(sentence)
# 	10.times do |i|
# 		puts i.to_s + " " + sentence
# 	end
# end

#Exercise 14
# def countdown(count)
# 	until count == 0
# 		puts count
# 		count = count-1
# 	end
# end

#Exercise 15
# def countup(count)
# 	i = 0
# 	until i == count
# 		i = i +1
# 		puts i
# 	end
# end

#Exercise 16
# def fizz(count)
#   until count == 0
#     if count %3 == 0
#       puts "Fizz"
#     else
#       puts count      
#     end
#     count -= 1
#   end
# end