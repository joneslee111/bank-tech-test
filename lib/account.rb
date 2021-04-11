# frozen_string_literal: true

require_relative 'statement'

class Account
  attr_reader :balance, :statement, :transactions

  def initialize(statement = Statement.new)
    @balance = 0
    @transactions = []
    @time = Time.new
    @statement = statement
  end

  def withdraw(amount)
    if @balance < amount
      raise 'You a broke boy, go earn some cheddar'
    else
      @balance -= amount
      new_transaction = "#{@time.strftime('%d/%m/%y')}  || #{'%.2f' % amount}    || nil      || #{format('%.2f',
                                                                                                         @balance)}"
      @transactions.push(new_transaction)
    end
  end

  def deposit(amount)
    @balance += amount
    new_transaction = "#{@time.strftime('%d/%m/%y')}  || nil      || #{'%.2f' % amount}   || #{format('%.2f',
                                                                                                      @balance)}"
    @transactions.push(new_transaction)
  end

  def bank_statement
    @statement.print_statement(@transactions)
  end

end
