# frozen_string_literal: true

require_relative 'statement'

class Account
  attr_reader :balance, :statement, :transactions

  def initialize(balance = 0, statement = Statement.new)
    @balance = balance
    @transactions = []
    @statement = statement
  end

  def withdraw(amount)
    if @balance < amount
      raise 'You a broke boy, go earn some cheddar'
    else
      @balance -= amount
      new_transaction = "#{current_date}  || #{'%.2f' % amount}    || nil      || #{format('%.2f',
                                                                                                         @balance)}"
      @transactions.push(new_transaction)
    end
  end

  def deposit(amount)
    @balance += amount
    new_transaction = "#{current_date}  || nil      || #{'%.2f' % amount}   || #{format('%.2f',
                                                                                                      @balance)}"
    @transactions.push(new_transaction)
  end

  def bank_statement
    @statement.print_statement(@transactions)
  end

  def current_date
    time = Time.new.strftime('%d/%m/%y')
  end 

end
