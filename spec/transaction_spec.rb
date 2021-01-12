require 'transaction'

describe Transaction do
  describe '#initilalize' do
    let(:transaction) { Transaction.new(amount: 10) }
    let(:timestamp) { Time.now.strftime('%d/%m/%Y') }

    it 'stores the amount from transaction' do
      expect(transaction.amount).to eq(amount: 10)
    end

    it 'stores time and dates' do
      expect(transaction.timestamp).to eq timestamp
    end
  end
end
