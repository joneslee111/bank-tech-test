# frozen_string_literal: true

class Statement
  HEADER = "date      || withdraw || deposit  || balance  \n"

  def print_statement(transactions)
    new_statement = transactions.reverse.join("\n")
    this_statement = HEADER + new_statement
    puts this_statement
  end

end
