require_relative 'transaction'

class Account
  attr_reader :balance, :transactions

  HEADER = 'date || credit || debit || Balance'

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << Transaction.new(amount)
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << Transaction.new(-amount)
  end

  def print_statement
    puts HEADER
    @transactions.map(&:formate)
  end
end
