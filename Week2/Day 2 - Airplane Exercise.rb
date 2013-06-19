# The code before it becomes possible to have more than 1 airplane in the same city
# class Airplane
# 	@@city_to_airplane_hash = {}

# 	attr_accessor :name, :city, :capacity 

# 	def initialize(name, city, capacity)
# 		@city = city
# 		@capacity = capacity	
# 		@name = name

# 		if @@city_to_airplane_hash[city]
# 			puts "This city already has an airplane"
# 		else
# 			@@city_to_airplane_hash[city]=self 
# 		end
# 	end

# 	def fly_to_city(new_city)
# 		if @@city_to_airplane_hash[new_city]
# 			puts "That city already has an airplane, #{@@city_to_airplane_hash[new_city].name}"
			
# 		else
# 			@@city_to_airplane_hash.delete(@city)
# 			@city = new_city
# 			@@city_to_airplane_hash[@city]=self	
# 		end
# 	end

# 	def self.can_i_fly(city_1,city_2)
# 		if @@city_to_airplane_hash[city_1]  && @@city_to_airplane_hash[city_2]==nil
# 			@@city_to_airplane_hash[city_1].name
# 		end
# 	end

# 	def self.city_to_airplane_hash
# 		@@city_to_airplane_hash
# 	end
# end

class Airplane
	@@city_to_airplane_hash = {}

	attr_accessor :name, :city, :capacity 

	def initialize(name, city, capacity)
		@city = city
		@capacity = capacity	
		@name = name

		if @@city_to_airplane_hash[city]
			@@city_to_airplane_hash[city].push(self)
		else
			@@city_to_airplane_hash[city]=[self] 
		end
	end

	def fly_to_city(new_city)
		if @@city_to_airplane_hash[new_city]
			@@city_to_airplane_hash[new_city].push(self)
			
			@@city_to_airplane_hash[city].delete_if { |x| x.name==self.name }
			self.city = new_city
		else
			@@city_to_airplane_hash[new_city]=[self]
			
			@@city_to_airplane_hash[city].delete_if { |x| x.name==self.name }
			self.city = new_city
		end
	end

				# def self.can_i_fly(city_1,city_2)
				# 	if @@city_to_airplane_hash[city_1]  && @@city_to_airplane_hash[city_2]==nil
				# 		@@city_to_airplane_hash[city_1].name
				# 	end
				# end

	def self.city_to_airplane_hash
		@@city_to_airplane_hash
	end
end


#Exercise 11
class User
	@@all_users = []

	attr_accessor :id, :name

	def initialize(name)
		@name = name

		@@all_users << self

		# Here's (maybe) another way to do @id = (@@all_users.count - 1)
		# @id = @@all_users.last.index

		@id = (@@all_users.count - 1)
	end

# class
	def self.display_users
		@@all_users
		
	end

end





		