require 'account'

describe Account do

  describe '#initialize' do
    it 'balance starts nil' do
      expect(subject.transactions).to be_empty
    end

    it 'transactions in history empty' do
      expect(subject.balance).to eq 0
    end
  end

  describe '#deposit' do
    it "increases the balance by deposited amount" do
      subject.deposit(100)
      expect(subject.balance).to eq 100
    end
  end
end
