class Statement

  HEADER = "date      || withdraw || deposit  || balance  \n"
  
  def print_statement(transaction)
    new_statement = transaction.reverse.join("\n")
    this_statement = HEADER + new_statement
    puts this_statement
  end


 
#   date     || deposit  || withdraw  || balance
# 14/01/2012 ||          || 500.00    || 2500.00
# 13/01/2012 || 2000.00  ||           || 3000.00
# 10/01/2012 || 1000.00  ||           || 1000.00

# Testing rspec is working
  def this_is_test
    "This is a test"
  end

end