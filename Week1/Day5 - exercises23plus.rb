# Exercise 23
# puts "Hello friend! What is your first name?"
# @name = gets.chomp!
# puts "What is your last name?"
# @surname = gets.chomp!
# puts "What is your age?"
# @age = gets.chomp!
# puts "What is your fav fruit?"
# @fav_fruit = gets.chomp!
# puts "What is your fav veggie?"
# @fav_veggie = gets.chomp!
# puts "Your name is #{@name} #{@surname} and your age is #{@age}. Your fruit is #{@fav_fruit} and veggie is obviously #{@fav_veggie}"

#Exercise 24
# puts "Welcome to the lease generator"
# puts "What is your name?"
# user_name = gets.chomp!
# puts "Who are you leasing an apartment from?"
# leaser_name = gets.chomp!
# puts "How long is the lease? (in months)?"
# length_of_term = gets.chomp!.to_i
# puts "How much is rent per month?"
# rent_per_month = gets.chomp!.to_i
# puts "Below is the lease agreement. Please sign at the end."
# puts "The leaser #{user_name} will be renting the apartment complex from #{leaser_name} for #{length_of_term} months and at a rate of $#{rent_per_month} dollars a month. On average this will cost $#{length_of_term * rent_per_month}"

#Exercise 25
# puts "Hey, I am the annoying Siri on the iPhone."
# puts "I am soo smart that I can even do math"
# puts "First, I will do addition, give me a number"
# first_number_for_addition = gets.to_i
# puts "Please give another..."
# second_number_for_addition = gets.to_i
# puts first_number_for_addition.class
# puts "Wait for it..."
# puts "Your answer is:"
# answer = first_number_for_addition + second_number_for_addition
# puts answer

#Exercise 26
# garage_items = ["computer", "black backpack", "tv stand", "office chair"]
# p garage_items[1]
# garage_items[-1] = "rolling desk chair"
# p garage_items
# garage_items.delete("tv stand")
# p garage_items
# garage_items.insert(1, "couch")
# p garage_items
# garage_items.insert(-1, "table", "blender")
# p garage_items

#Exercise 27 Part 1
# garage_items = ["computer", "couch", "black backpack", "rolling desk chair", "table", "blender"]
# garage_items.sort!
# sorted_garage_items = garage_items
# puts "sorted garage items:"
# puts sorted_garage_items

#Exercise 27 Part 2
# garage_items = ["computer", "couch", "black backpack", "rolling desk chair", "table", "blender"]
# garage_items.reverse!
# reversed_garage_items = garage_items
# puts "reversed garage items:"
# puts reversed_garage_items

#Exercise 27 Part 3 I have a question for this part.. if there is a way to do this without the .each?
# garage_items = ["computer", "couch", "black backpack", "rolling desk chair", "table", "blender"]
# garage_items_capitalized = []
# garage_items.each { |item| garage_items_capitalized<<item.capitalize }
# p garage_items_capitalized
#Exercise 27 Part 4 - continues from Part 3
# garage_items_capitalized.each_with_index { |item, index| puts "#{index + 1}. #{item}"}

#SIMPLER WAY TO DO ABOVE
# counter = 0
# garage_items_capitalized = []
# garage_items.each do |item|
# 	garage_items_capitalized.push(item.capitalize)
# 	puts "#{counter += 1} #{item.capitalize}"
# end

		#Taylor's version of garage inventory - also see counter.rb in Day5
		# keys = []
		# garage_inventory.keys.each {|item| keys << item.to_s}
		# p keys
		# puts "These are the items being sold: #{keys[0]} at price #{garage_inventory[keys[0].to_sym]}, #{keys[1]} at price #{garage_inventory[keys[1].to_sym]}, and #{keys[2]} at price #{garage_inventory[keys[2].to_sym]}."

#Exercise 28 
# smith_family = ["John", "Jane", "Jacob"]
# last_name = "Smith"

	#This resulted in infinite loop of Smith
	# smith_family.each do |name| 
	# 	full_name = name + " " + last_name
	# 	smith_family = smith_family << full_name
	# 	p smith_family
	# end
	# p smith_family

	#.collect works the same as .map as can see from this and following example
	# smith_family.collect! {|name| name + " #{last_name}"}
	# p smith_family

	#.map works the same as .collect
	# smith_family.map! do |name|
	# 	"#{name} #{last_name}"
	# end

#Exercise 29
# empty_hash = []

#Exercise 30
# hash = {
# 	:symbol => "string"
# }

#Exercise 31 
# hash = {
# 	"fruits" = ["lemon", "blueberry", "orange"]
# 	"fav_things" = {
# 		"fruit" => "raspberry"
# 		"veggie" => "eggplant"
# 	:lucky_num => 7
# 	"lucky?" => true
# 	}

# }

#Exercise 32 
# newhash = {}
# newhash["key"]= "value"
# p newhash

#Exercise 33 
# hash1 = {"XBox" => "Microsoft", "PS" => "Sony"}
# hash2 = {"Macbook" => "Apple", "Windows 8" => "Microsoft"}
# p hash1.merge(hash2)

#Exercise 34
# hash1 = {"XBox" => "Microsoft", "PS" => "Sony"}
# hash2 = {"Macbook" => "Apple", "Windows 8" => "Microsoft"}
# hash1.merge!(hash2)

#Exercise 35 CONTINUES from Ex 34
# hash1.each_pair { |key, value| puts "#{key} is #{value}"}

#Exercise 36
# hash = {"name" => "bob", :job => "builder", 21 => "current_age"}
# puts hash["name"]
# puts hash[:job]
# puts hash[21]

#Exercise 37
# hash = {
#     "name" => {
#         :first => "Louis",
#         :last => "The Thirteenth"
#     },
#     "father" => {
#         "name" => {
#             :first => "Louis",
#             :last => "The Twelvth"
#         },
#         "father" => {
#             "name" => {
#                 :first => "Louis",
#                 :last => "The Eleventh"
#             },
#             "father" => "You've gotta be kidding me!"
#         }
#     }
# }
# puts hash["name"]
# puts hash["name"][:first]
# puts hash["name"][:last]
# puts hash["father"]
# puts hash["father"]["name"]
# puts hash["father"]["name"][:first]
# puts hash["father"]["name"][:last]

#Exercise 38
# my_friends = [
#     {
#         :name => "Bob",
#         :occupation => "Builder"
#     },
#     {
#         :name => "Dora",
#         :occupation => "Explorer"
#     },
#     {
#         :name => "Mandy",
#         :occupation => "Handy(wo)man"
#     },
# ]
# my_friends.each do |personhash|
# 	personhash.each do |key, value|
# 		puts "#{key} is #{value}"
# 	end 
# end

#Exercise 40 Part 1 - NOTE THIS EXERCISE WAS REDONE
	# OLD VERSION
	# garage_inventory = {:computer => "1799.99", :couch => "300", :backpack => "30"}
	# puts "#{garage_inventory.keys[0]}"



#Exercise 40 Part 2 - NOT YET DONE - REVISIT - NOTE THIS EX WAS REDONE BY STAFF
	# OLD VERSION
	# garage_inventory = {
	#     :computer => {
	#         :price => "1799.99",
	#         :quantity => 3
	#     }, 
	#     :couch => {
	#     	:price => "300",
	#     	:quantity => 2
	#     },
	#     :backpack => {
	#     	:price => "30",
	#     	:quantity => 1
	#     }
	# }
#Ex 40 Part 1 - New Version

garage_inventory = []
garage_inventory << {name: 'computer', price: '100.00', quantity: 1}
garage_inventory << {name: 'book', price: '3.50', quantity: 5}
garage_inventory << {name: 'mobile phone', price: 
'200.00', quantity: 10}

total_inventory_value = 0

garage_inventory.each do |item|
	
		puts "#{item[:name]} is $#{item[:price]} and we have #{item[:quantity]} of these"
	
		puts "Item #{item[:name]} has a total value of: #{item[:price].to_f * item[:quantity].to_f}"

		total_inventory_value = total_inventory_value + (item[:quantity].to_f * item[:price].to_f)

end

	puts "Total inventory value is: #{total_inventory_value}"
	puts garage_inventory.count








#Exercise 42
# def show_a_profile
# 	puts "<h1>My Header</h1>"
# 	puts "<p>a paragraph</p>"
# 	puts "<img src='http://25.media.tumblr.com/b4481dc4189efa94dc40c024f492197c/tumblr_mkuldeb8EU1qhy6c9o6_250.gif'>"
# end

#Exercise 43
# def show_a_profile(my_name)
# 	puts "<h1>My Header</h1>"
# 	puts "<p>a paragraph with my name: #{my_name}</p>"
# 	puts "<img src='http://25.media.tumblr.com/b4481dc4189efa94dc40c024f492197c/tumblr_mkuldeb8EU1qhy6c9o6_250.gif'>"
# end

#Exercise 44
# def show_a_profile_with_name_and_more(my_name, my_age, my_gender)
#     puts "<h1>My Header</h1>"
# 	puts "<p>a paragraph with my name: #{my_name}, my age: #{my_age}, my gender: #{my_gender}</p>"
# 	puts "<img src='http://25.media.tumblr.com/b4481dc4>"
# end

#Exercise 45
# def multiply_2_numbers_and_print(x, y)
#     print x * y
# end

#Exercise 46
# def multiply_2_numbers_and_return(x, y)
#     x * y
# end

#Exercise 47 continues from ex 45 and 46
# def multiply_4_numbers_and_return(a, b, c, d)
#     multiply_2_numbers_and_return(a, b) * ( c * d)
# end

# def multiply_4_numbers_and_print(a, b, c, d)
#     multiply_2_numbers_and_print(a, b) * (c * d) 
    # fails because print returns nil rather than the result of multiplication
# end

#Exercise 48 DIDN'T SEE NEED TO FINISH
# def create_header(my_name)
    # my_name
    
# end

# def create_image(image_file)
    # TODO: Create an image tag with the image_file being the source
    # The input image_file is a string
    # return the image tag as a string
    # "<img src=#{image_file}>"
# end

# def create_paragraph(age, gender, job)
    # TODO: Create a paragraph tag using the arguments age, gender, and job
    # The input age is an integer and the inputs gender and job are strings
    # return the tag as a string

# end
# def create_profile(name, age, gender, job, image_file)
    # TODO: By calling the above 3 methods, print out the person's profile information
# end

#Exercise 49
# def can_i_access_your_profile(is_friend)
#     if is_friend
#     	"yes"
#     else
#     	"no"
#     end
# end

#Exercise 50
# def can_i_access_your_profile(is_friend, my_city, their_city)
#     if is_friend
#     	"yes"
#     elsif my_city == their_city
#     	"maybe"
#     else
#     	"no"
#     end
# end

#Exercise 51
# def can_i_access_your_profile(is_friend, my_city, their_city, their_school)
		    # Input is_friend is a boolean
		    # Input my_city and their_city are strings
		    # TODO: return "yes" if they are your friend
		    # return "HELL YEAH" if they go to school at "MakerSquare"
		    # return "maybe" if they live in the same city as you
		    # otherwise return "no"

		    # Question: How would this differ if you changed the order of checking the school
		    # and checking the city?
#     if is_friend
#     	"Yes"
#     elsif their_school == "MakerSquare"
#     	"Hell Yeah"
#     elsif my_city == their_city
#     	"maybe"
#     else
#     	"no"    	
#     end
# end

#Exercise 52
# def can_i_access_your_profile(is_friend, my_city, their_city, their_school)
#     if my_city==their_city

#      	if their_school=="MakerSquare"
#     		"YES"
#      	else 
#     		"Mehh"
#     	end
#     else
#     	"Naw"
#     end
# end

# def log_in
# 	puts "What is your password?"
# 	password = gets.chomp!

# 	while password != password_saved
# 		puts "Wrong, Try again"
# 		password = gets.chomp!
# 	end
	
# 	if password == password_saved
# 		puts "That's right"
# 	end
# end

#Exercise 53
# def sign_up
# 	  puts "What's your username"
#     username = gets.chomp
#     puts "What's your password"
#     password = gets.chomp
#     puts "Test #{username} string"
#     while password.length <= 8
#     	puts "Your password is not long enough. Please enter a different password:"
#     	password = gets.chomp
#     end
# end

#Exercise 54 must turn answer to string or will get error if later have comparison betw string and integer
# def sign_up
#     puts "What's your username"
#     username = gets.chomp
#     puts "What's your password"
#     password = gets.chomp.to_s 
#     puts "Confirm the password"
#     password_confirmation = gets.chomp.to_s

#     while password.length <= 8
# 	    puts "Your password is not long enough. Please enter a different password:"
# 	    password = gets.chomp.to_s

# 	    puts "Now enter confirmation password:"
# 	    password_confirmation = gets.chomp.to_s

# 	    if password.length > 8
# 	    	while password != password_confirmation
# 	    		puts "Your confirmation does not match, please re-input password:"
# 	    		password = gets.chomp.to_s
# 	    		puts "Now input the confirmation"
# 	    		password_confirmation = gets.chomp.to_s	    		
# 	    	end
# 	    end
#   	end
# end