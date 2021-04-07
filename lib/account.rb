require_relative 'statement'

class Account
  attr_reader :balance, :statement, :transaction

  def initialize(statement = Statement.new)
    @balance = 0
    @transaction = []
    @time = Time.new
    @statement = statement
  end
  
  def withdraw(amount)
    @balance -= amount
    new_transaction = ("#{@time.strftime('%d/%m/%y')}  || #{'%.2f' % amount}    || nil      || #{'%.2f' % @balance}")
    @transaction.push(new_transaction)
  end

  def deposit(amount)
    @balance += amount
    new_transaction = ("#{@time.strftime('%d/%m/%y')}  || nil      || #{'%.2f' % amount}   || #{'%.2f' % @balance}")
    @transaction.push(new_transaction)
  end
  
  def bank_statement
    @statement.print_statement(@transaction)
  end

# Testing rspec is working
  def this_is_test
    "This is a test"
  end

end