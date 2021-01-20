require 'transaction'

describe Transaction do
  let(:account) { Account.new }
  let(:amount) { 1.23 }
  let(:transaction) { Transaction.new(amount, account) }
  let(:timestamp) { Time.now.strftime('%d/%m/%Y') }

  describe '#initilalize' do
    it 'validates class' do
      expect(transaction).to be_a Transaction
    end

    it 'stores dates' do
      expect(transaction.timestamp).to eq timestamp
    end
  end

  describe '#balance' do
    it 'checks balance' do
      expect(transaction.balance).to eq account.balance_after(transaction)
    end
  end
end
