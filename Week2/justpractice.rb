class BankAccount


	attr_accessor :amount_available

	def initialize
		@amount_available = 500
		
	end

	def deposit_money(amount)
		@amount_available += amount
		
	end

	def withdraw_money(amount)
		@amount_available -= amount
		
	end

	def get_balance
		@amount_available
	end

	def take_loan(amount)
		@amount_available +=amount
		
	end
end

#the model in rails is a class used to represent an idea

#domain modeling - for yoga site might be - USer, Teacher, Classes, Schedule.. 

#$shift zz will take you out of vim