class Transaction
  attr_reader :amount, :timestamp

  def initialize(amount)
    @amount = amount
    @timestamp = Time.now.strftime("%d/%m/%Y")
  end
end
