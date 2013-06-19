

#note of stuff to remembe: HTML & CSS - DESIGN AND BUILD WEBSITES book, PRACTICAL OBJECT-ORIENTED DESIGN IN RUBY

class BankAccount
  attr_accessor :amount_available

  def initialize
    @amount_available = 500
    
  end

  def create_users
    5.times do
    end
  end

  def deposit_money(amount)
    @amount_available += amount
    
  end

  def withdraw_money(amount)
    @amount_available -= amount
    
  end

  def get_balance
    puts "You have $#{@amount_available} available in your bank account."
  end
end
