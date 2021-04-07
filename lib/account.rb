class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end
  
  def withdraw(amount)
    @balance -= amount
    @balance
  end

  def deposit(amount)
    @balance += amount
    @balance
  end

# Testing rspec is working
  def this_is_test
    "This is a test"
  end

end