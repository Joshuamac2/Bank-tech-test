class Transaction
  attr_reader :amount, :timestamp

  def initialize(amount)
    @amount = amount
    @timestamp = Time.now.strftime("%d/%m/%Y")
  end

  def formate
    @amount > 0 ? (puts "#{@timestamp}|| #{@amount} || || Balance")
    : (puts "#{@timestamp}|| || #{@amount.abs} || Balance")
  end
end
