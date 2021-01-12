require_relative 'transaction'

class Account
  attr_reader :transactions

  def initialize
    @transactions = []
  end
end
