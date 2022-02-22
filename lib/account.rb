class Account

  DEFAULT_BALANCE = 0

  attr_reader :balance

  def initialize    
    @balance = DEFAULT_BALANCE    
  end
  
  def withdraw(debit)    
    raise 'Insufficient funds available' if (@balance - debit) <= 0    
    @balance -= debit   
  end

  def deposit(credit)    
    @balance += credit      
  end
end