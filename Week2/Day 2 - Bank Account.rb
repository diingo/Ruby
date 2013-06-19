class BankAccount
	#CLASS VARIABLES
	@@total_money_in_accounts=0
	@@total_loans_out=0
	@@pending_transactions = []

	attr_accessor :amount_available,
		:loan_amount

	def initialize
		@amount_available=500
		@@total_money_in_accounts+=500
		@loan_amount=0
	end

	def deposit_money(amount)
		return @amount_available+=amount
		@@total_money_in_accounts+=amount
	end

	def withdraw_money(amount)
		if @amount_available < amount
			puts "You don't have that much money available in your account!"
		else
			return @amount_available-=amount
			@@total_money_in_accounts-=amount
		end
	end

	def get_balance
		puts "You have #{@amount_available} dollars left in your bank account."
	end

	#LOANS
	def take_loan(amount)
		if @loan_amount > 1000
			puts "You cannot take out another loan.  You have exceeded your maximum loan limit of $1000."
		else
			return @loan_amount +=amount
			@@total_loans_out +=amount
		end
	end

	def repay_loan(amount)
		return @loan_amount -=amount
		@@total_loans_out-=amount
	end

	def accrue_interest
		return @loan_amount+=0.06*@loan_amount
		@@total_loans_out+=0.06*@loan_amount
	end

	def get_outstanding_loan
		puts "You have an outstanding loan of #{@loan_amount} dollars."
	end

	#CLASS METHOD
	def self.transfer_money

		@@pending_transactions.each do |transaction|
			transaction[0].amount_available-=transaction[2]
			transaction[1].amount_available+=transaction[2]
		end

	end

	def self.total_cash_on_hand
		puts "The bank has a total amount of #{@@total_money_in_accounts-@@total_loans_out} cash on hand."
	end

	def self.pending_transactions(account_one, account_two, amount)
		@@pending_transactions << [account_one, account_two, amount]
	end

	def self.show_pending_transactions
		@@pending_transactions
	end

end

def create_bank_accounts()
	@account_1 = BankAccount.new
	@account_2 = BankAccount.new
	@account_3 = BankAccount.new
end

class Transaction

	attr_accessor :account_one,
		:account_two, :amount

def initialize(account_one, account_two, amount)

	BankAccount.pending_transactions(account_one, account_two, amount)
end

end