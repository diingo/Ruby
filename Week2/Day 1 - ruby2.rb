#Exercise 1
class Chimpanzee
 @@Chimpanzees = []
 def self.all_chimps
 	@@Chimpanzees
 end
 def yell
 	puts "Oooh Ooh ooh Ah ah ah" 	
 end
# Instance Level
 attr_accessor :bananas_eaten, :is_clean
   def initialize
   	@bananas_eaten = 0
   	@is_clean = true

   	@@Chimpanzees << self
   end
   def eat
   	puts "Here's a banana."
   	@bananas_eaten += 1
   	puts "This monkey has poopled."
   	@is_clean = false
   	# if @bananas_eaten
   	# 	@bananas_eaten+=1
   	# else @bananas_eaten=1
   	# end
   end
   def groom 
   	if @is_clean == false
   		puts "This monkey is getting a shower."
   		@is_clean = true
   	else
   		puts "Nothing to do. This monkey is clean."
   	end
   end
   def bananas_eaten
   	@bananas_eaten 
   end
end

#Exercise 6-8 and More
class Roommate
 @@total_beer_count = 0
 @@roommate_total = 0
 @@roommates =[]
 @@beers_in_fridge = 20
	def self.beer_count 
	 	@@total_beer_count
	end
	def self.num_roommates
	 	@@roommate_total
	end
  def self.all_roommates
    @@roommates
  end
  def self.take_a_round
  	@@roommates.each do |roommate|
  		roommate.drink_beer
  	end
  end
def self.drunkest
	@most_beers = 0
	@@roommates.each do |roommate|
		if roommate.beer_count > @most_beers
			@most_beers = roommate.beer_count
			@drunkest = roommate.name
		end
	end
	puts "#{@drunkest} drank the most beers (#{@most_beers}) beers!"
end

 attr_accessor :beer_count, :name
 def initialize
 	@beer_count = 0
 	@@roommate_total += 1
 	@@roommates << self
 end
 def drink_beer
 	print "yumm"
 	@@total_beer_count += 1
 	@beer_count += 1
 	@@beers_in_fridge -=1
 	if @@beers_in_fridge ==0
 		puts "YOU ARE OUT OF BEER!!!"
 	elsif @@beers_in_fridge < 5
 		puts "#{@drunkest} needs to go on a beer run!"
 	end
 end
end

# Roommate.all_roommates.each{
# |roommate| puts roommate.beer_count}
#REmember to use .select when needed