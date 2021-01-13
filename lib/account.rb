require_relative 'transaction'

class Account
  attr_reader :balance, :transactions

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
end
