class Transaction
  attr_reader :amount, :account, :timestamp

  def initialize(amount, account)
    @amount = amount
    @account = account
    @timestamp = Time.now.strftime("%d/%m/%Y")
  end

  def balance
    @account.balance_after(self)
  end

  def formate
    @amount > 0 ? (puts "#{@timestamp}|| #{@amount} ||  ||  #{balance}")
    : (puts "#{@timestamp}||  || #{@amount.abs}  ||  #{balance}")
  end
end
