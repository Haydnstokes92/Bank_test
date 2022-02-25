require_relative 'account'

class Statement
  attr_reader :transactions

  def header
    'Date || Credit || Debit || Balance'
  end

  def print_statement
    puts header
    transactions.reverse.each do |item|
      puts item.format
    end
  end
end