require_relative 'transaction'

class Account
  attr_reader :balance, :transactions

  HEADER = 'date || credit || debit || balance'

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << Transaction.new(amount, self)
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << Transaction.new(-amount, self)
  end

  def balance_after(transaction)
    index = @transactions.find_index(transaction)
    @transactions[0..index].map(&:amount).sum
  end

  def print_statement
    puts HEADER
    @transactions.map(&:formate)
  end
end
